# Today I Learned (TIL)
This is a growing collection of random things that I've picked up over time and don't want to forget.
There is no organisation or coherence to it all. It's just a list. It's messy. But it's mine :)
More recently I've been collecting these in Notion because it's easier to manage.

- rails console -- --nomultiline
- printenv
- ~/.irbrc
- irb measure - [https://jemma.dev/blog/irb-measure](https://jemma.dev/blog/irb-measure)
- rspec –only-failures
- the difference between transform & resolve. 
transform can happen with nothing more than input -> output. but rest
- set VSCODE as git editor:
git config --global core.editor "code --wait"
- 

```
SELECT  object_id, index_id, COUNT(*) OVER ()
FROM    [msdb].sys.indexes;
```

- use result of last command $(!!)
    - bundle show gemname. results in # /path/to/gem
    - code $(!!) opens /path/to/gem in vscode
- If chrome basic auth is sticking (no prompt) run this `chrome://restart`
- .gitattributes
    - touch ~/.gitattributes
        
        ```bash
        *.rb diff=ruby
        *.rake diff=ruby
        ```
        
- OODA - for problem solving
    - observe
    - orient
    - decide
    - act
- xargs: `ls*/log/**log | xargs rm`

```sql
select * from generate_series(
'2020-01-01'::DATE,
'2021-01-01'::DATE,
'1 DAY'
)
```

- rails db - shortcut for database specific cli: `psql` or `mysql`
- heroku pg:upgrade - not as scary as i thought!
- grep —context=8 "search" file.txt
- Give [localhost](http://localhost) network alias so that docker container can connect
    - sudo ifconfig lo0 alias 10.254.254.254
- create an [ARCHITECTURE.md](https://matklad.github.io//2021/02/06/ARCHITECTURE.md.html) file
- z shell navigation "autocomplete" but better! [https://github.com/rupa/z](https://github.com/rupa/z)
- all about bash scripts. too much to list. will need to revisit this regularly.
- `bc` command. basic calculator. pipe calculator expressions to do basic math
    - `echo "12+5" | bc`
    - `17`
- fish shell, create abbreviation:
    - `abbr gp git pull`
    - now `gp` is alias to `git pull`
- `pbcopy` copy command line to
- `rails stats`
- speed up rubocop
    - [https://docspring.com/blog/posts/making-rubocop-20-times-faster/](https://docspring.com/blog/posts/making-rubocop-20-times-faster/)
- SQL: ceil(random() * 3) is better than round(random() * 3) because distribution is more even

```
WITH daterangeAS (
SELECT *
FROM generate_series(
        '2021-01-01'::timestamptz,-- start'2021-01-02'::timestamptz,-- stopinterval '1 hour'-- step    )WITHORDINALITYAS t(hh, n)
)SELECT *FROM daterange;
```

- postgresql equivalent of mysql's "insert ignore"
    - insert into table (column) values ('value') on conflict do nothing.
- Rails wildcard routes can contain multiple parameters. I'm not sure why this wasnt' obvious to me before? I guess I've only ever used one at a time.
`"*a/route/*b"`
`params[:a]`
`params[:b]`
- which -a executable : will show all options, not just the first
- console.log({width}) is equivalent to console.log('width', width)
- "Weeks of coding can save you hours of planning"
- Rails render collection
    - [https://thoughtbot.com/blog/rendering-collections-in-rails](https://thoughtbot.com/blog/rendering-collections-in-rails)
- [https://avdi.codes/throw-catch-raise-rescue-im-so-confused/](https://avdi.codes/throw-catch-raise-rescue-im-so-confused/)
- Hash.invert - takes a hash and returns a new hash with keys as values and values as keys
    - { a: 1 }.invert → { 1: a }
    
    ```ruby
    # does what it says. creates a helper method from a method in the application_controller
    def current_user
      @current_user ||= User.find(cookies.signed[:user_id])
    end
    helper_method :current_user
    ```
    
- [https://til.hashrocket.com/posts/f4agttd8si-chaining-then-in-ruby-26](https://til.hashrocket.com/posts/f4agttd8si-chaining-then-in-ruby-26)
- Cmd-K on github
- ssl rails server → [https://gist.github.com/trcarden/3295935](https://gist.github.com/trcarden/3295935)
- “show data_directory” - postgres/psql
- [http://localhost:3000/rails/info/routes](http://localhost:3000/rails/info/routes) show rails routes in browser
- https://hstspreload.org
- fix postgres serial sequence when it goes out of date
    - SELECT nextval('discounts_id_seq'); # check existing sequence
    - SELECT SETVAL('public."discounts_id_seq"', COALESCE(MAX(id), 1)) FROM public."discounts";
- how to edit directly in github
- ditto
