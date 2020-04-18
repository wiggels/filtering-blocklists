# filtering-blocklists
This is a project that includes both a repository and bash script to maintain blocklists for DNS web filtering.

## How to use
### Simply use the lists (on something like Pi-Hole):
`https://raw.githubusercontent.com/wiggels/filtering-blocklists/master/lists/current/porn.list`
`https://raw.githubusercontent.com/wiggels/filtering-blocklists/master/lists/current/dating.list`
`https://raw.githubusercontent.com/wiggels/filtering-blocklists/master/lists/current/drugs.list`
`https://raw.githubusercontent.com/wiggels/filtering-blocklists/master/lists/current/proxy.list`
`https://raw.githubusercontent.com/wiggels/filtering-blocklists/master/lists/current/violence.list`
`https://raw.githubusercontent.com/wiggels/filtering-blocklists/master/lists/current/sexual_education.list`
`https://raw.githubusercontent.com/wiggels/filtering-blocklists/master/lists/static/games.list`

### Host/update the lists yourself:
Clone repository and run `./update_lists.sh`. This will download new list content, strip IP addresses, place lists into a dated directory, and symlink the new directory to lists/current. This allows you to update the lists but always use the lists/current path.

## License

filtering-blocklists is released under the terms of MIT License. For more details take a look at the [LICENSE](https://raw.githubusercontent.com/wiggels/filtering-blocklists/master/LICENSE).