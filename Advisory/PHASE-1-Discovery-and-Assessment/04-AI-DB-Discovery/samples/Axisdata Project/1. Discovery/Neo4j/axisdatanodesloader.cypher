//1. Nodes creation

LOAD CSV WITH HEADERS FROM "file:///c:/axisdata/filtered_header.csv" AS row
FIELDTERMINATOR ';'
CREATE (codeobject:CodeObject {name:row.Name, type:row.Type, id:row.Id, loc:row.LoC, references:row.References, dependencies:row.Dependencies, abstraction:row.Abstraction, instability:row.Instability, simpleactions:row.SimpleActions, mediumactions:row.MediumActions, complexactions:row.ComplexActions})

LOAD CSV WITH HEADERS FROM "file:///c:/axisdata/relationships.csv" AS row
FIELDTERMINATOR ';'
CREATE (relationships:Relationships {source:row.Source, target:row.Target, relationship:row.Rel})


//2. Relationships creation
MATCH (source:CodeObject), (target:CodeObject), (connection:Relationships)
WHERE source.id = connection.source AND target.id = connection.target
CREATE (source)-[r:CALLS]->(target)

//3. Return all nodes
MATCH (n) RETURN n

//4. Return all relationships
MATCH (n)-[r]->(m) RETURN n,r,m

//5. Return all nodes and relationships
MATCH p=()-[r:CALLS]->() RETURN p 

//6. Return all nodes with filter
MATCH (n) WHERE (n.id) = "3011216" RETURN n LIMIT 300

MATCH (n) WHERE (n.type) = "FUNCTION" RETURN n LIMIT 300

























WHERE source.id = rel.source AND target.id = rel.target
WHERE a.name = 'Michael Caine' AND m.title = 'Batman Begins'
CREATE (a)-[:ACTED_IN]->(m)
RETURN a, m

MATCH
  (source:Codeobject),
  (target:Relationships)
WHERE source.id = target.sourcsource
create (source)-[r:CALLS {relationship: target.relationship}]->(target)
RETURN type(r)


//Create index for code object nodes name and id
CREATE INDEX codeobject_name IF NOT EXISTS
FOR (n:Codeobject)
ON (n.name)

CREATE INDEX codeobject_ID IF NOT EXISTS
FOR (n:Codeobject)
ON (n.id)

//Delete all nodes
MATCH (n)
DETACH DELETE n

//Return all nodes
MATCH p=()-[r:BELONGS_TO]->() RETURN p LIMIT 25

//Create relationships between code objects
LOAD CSV WITH HEADERS FROM "file:///c:/axisdata/relationships.csv" AS row
FIELDTERMINATOR ';'
MATCH (codeobject:Id {Id: row.Source})
MERGE (source:Relationship {name:row.Source})
CREATE (target:Relationship {name:row.Target})
CREATE (source)-[:CALLS]->(target)

LOAD CSV WITH HEADERS FROM "file:///c:/axisdata/relationships.csv" AS row
FIELDTERMINATOR ';'
MATCH (source:Source {name:row.Source}), (target:Target {id:row.Target})
CREATE (source)-[:CALLS {realtionship: row.rel}]->(target)

LOAD CSV WITH HEADERS FROM "file:///c:/axisdata/relationships.csv" AS row
FIELDTERMINATOR ';'
MATCH (a {id:row.Source})
WITH collect(a) as aNodes
MATCH (b {id:row.Target})
WITH aNodes, collect(b) as bNodes


//Return all relationships
MATCH p=()-[r:CALLS]->() RETURN p LIMIT 25
