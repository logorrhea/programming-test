# Armory (Programming Test)


## Step 1

To run this version of the application:

1. Run `git checkout step1` or navigate to the STEP_1 folder of the zip archive
2. Run `bundle` to install the required gems
3. Run `rails s` to start up the server


## Step 2

To run this version of the application:

1. Run `git checkout step2` or navigate to the STEP_2 folder of the zip archive
2. Ensure MongoDB is running on port 27017 (the default port)
3. Run `bundle`
4. Run `rake db:seed` to populate the database with example data
5. Run `rails s`

The Character model for this step is actually much simpler than in step 1 since
the `mongo_mapper` gem provides all the querying methods for us. It is also
much clearer what attributes the Character has in this step, given the syntax
that `mongo_mapper` uses.

I went with a NoSQL database for this application to simplify the model setup
it would require. Had I gone with a SQL database, the `equipment` property
would have required either another table (and model to match) or to be stored
as a delimited string (gross). That said, if the relationship were such that
many characters shared the same equipment, a SQL setup could potentially
prevent repitition of data.

**Side Note:** For this and the final version of the application, running the
rails server will give a warning about the fact that `bson_ext` is not
installed. I left it out intentionally because the gem does not compile
correctly on a Windows machine.


## Step 3 - Design Considerations for a High-Traffic Environment

Before making any sort of improvements or technologies, I would first ensure
the application had good test coverage. Providing test scenarios early on helps
identify the cause of issues more quickly and accurately when they come up
later on. The application also needs to make use of logging and analysis
software. This will ease the task of finding bottlenecks in the application
once it is in production.

Aside from testing, the simplest improvements to make would be fine-tune our
Ruby/Rails environment. There are many web server options for Ruby apps, all of
which have their use cases. For shear performance, though, Puma seems to be the
best thing going right now. Not only has it been shown to outperform in terms
of speed, but also boasts a significantly smaller memory footprint. I would
also consider using JRuby to provide multithreading support.

Database optimization is also key in supporting higher volumes of traffic. In
my implementation I chose MongoDB, which is a good candidate for such
environments. If the app necessitates traditional SQL relationships, I would
set up a two database scenario. Reads would hit a NoSQL database which had the
data streamed to it on a slightly-less-than-realtime basis (if I recall, WoW's
armory often takes hours to update at times). Writes would run against the SQL
database. If needed, a search-specific server could be introduced using
something like Apache's Solr or ElasticSearch.

Lastly, I would implement caching for parts of the application. Rails supports
various types of caching without requiring much extra work. We can supplement
this with programs like Memcached to serve up parts of our application without
ever having to touch a database.


## Step 4

To run this version of the application:

1. Run `git checkout step3` (or master, they are the same) or navigate to the STEP_3 folder of the zip archive
2. Ensure MongoDB is running on port 27017 (the default port)
3. Run `bundle`
4. Run `rake db:reseed` to replace the previous data with the new seeds
5. Run `rails s`

