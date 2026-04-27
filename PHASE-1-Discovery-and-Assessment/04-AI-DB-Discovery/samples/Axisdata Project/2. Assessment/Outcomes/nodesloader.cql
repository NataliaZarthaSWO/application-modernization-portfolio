//1. Clear database
MATCH (n)
DETACH DELETE n

//2. SET display nodes limit(300 by default)
:config initialNodeDisplay: 10000

//3. Load nodes
LOAD CSV WITH HEADERS FROM "file:///axisdata/ora2pg.csv" AS row
FIELDTERMINATOR ';'
CREATE (codeobject:CodeObject {
	id: toInteger(row.Id), 
	name: row.Name, 
	type: row.Type, 
	loc: toInteger(row.LoC), 
	references: toInteger(row.References), 
	dependencies: toInteger(row.Dependencies), 
	abstraction: toFloat(row.Abstraction), 
	instability: toFloat(row.Instability)},
	complexity: row.Complexity),
	coupling: row.Coupling)
)

//4. Load relationships
LOAD CSV WITH HEADERS FROM "file:///axisdata/relationships.csv" AS row
FIELDTERMINATOR ';'
MATCH (source:CodeObject { id : toInteger(row.Source)})
MATCH (target:CodeObject { id : toInteger(row.Target)})
CREATE (source)-[:CALLS]->(target)

//5. Add labels
MATCH (n {type:'TRIGGER'})
SET n:Trigger
RETURN n.name 

MATCH (n {type: 'PACKAGE'})
SET n:Package
RETURN n.name

MATCH (n {complexity: 'Simple'})
SET n:Complexity
RETURN n.name

MATCH (n {complexity: 'Medium'})
SET n:Complexity
RETURN n.name

MATCH (n {complexity: 'Complex'})
SET n:Complexity
RETURN n.name

MATCH (n {complexity: 'No Action'})
SET n:Complexity
RETURN n.name

MATCH (n {coupling: 'Loosely'})
SET n:Coupling
RETURN n.name

MATCH (n {coupling: 'Medium'})
SET n:Coupling
RETURN n.name

MATCH (n {coupling: 'Tightly'})
SET n:Coupling
RETURN n.name


//6. Display all nodes and relationships
MATCH (n)-[r]->(m)
RETURN n, r, m

//7. DROP existing projections
CALL gds.graph.drop('proj_undirected', false);
CALL gds.graph.project('proj_undirected', 'CodeObject', {CALLS: {orientation: 'UNDIRECTED', type: 'CALLS'}});

//8. The Louvain method is an algorithm to detect communities in large networks. 
CALL gds.louvain.mutate('proj_undirected', {mutateProperty:'communityId'})

//9. Communities
CALL gds.graph.streamNodeProperty('proj_undirected','communityId', ['CodeObject'])
YIELD nodeId, propertyValue
WITH propertyValue AS communityId, count(nodeId) AS nodes_count, collect(gds.util.asNode(nodeId).name) AS nodes
RETURN communityId, nodes_count, nodes
ORDER BY nodes_count DESC LIMIT 20

//10. Visualize community by Id
CALL gds.graph.streamNodeProperty('proj_undirected','communityId', ['CodeObject'])
YIELD nodeId, propertyValue
WITH propertyValue AS communityId, gds.util.asNode(nodeId) AS nodes
WHERE communityId = 370
RETURN nodes

//11. Return nodes with filter
MATCH (n) WHERE (n.id) = "3011214" RETURN n LIMIT 300

MATCH (n) WHERE (n.type) = "FUNCTION" RETURN n LIMIT 300

