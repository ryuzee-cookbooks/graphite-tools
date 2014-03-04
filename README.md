graphite-tools Cookbook
=======================
This cookbook will delete old graphite data.

Requirements
------------
There are no requirements

Attributes
----------

#### graphite-tools::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['graphite-tools']['remove_before']</tt></td>
    <td>Integer</td>
    <td>Days after last changed</td>
    <td><tt>14</tt></td>
  </tr>
  <tr>
    <td><tt>['graphite-tools']['whisper_path']</tt></td>
    <td>String</td>
    <td>Path to datafile directory</td>
    <td><tt>/opt/graphite/storage/whisper</tt></td>
  </tr>
  <tr>
    <td><tt>['graphite-tools']['cron']['hour']</tt></td>
    <td>String</td>
    <td>Hour to exec this command</td>
    <td><tt>0,6,12,18</tt></td>
  </tr>
  <tr>
    <td><tt>['graphite-tools']['cron']['minute']</tt></td>
    <td>String</td>
    <td>Minute to exec this command</td>
    <td><tt>5</tt></td>
  </tr>
</table>

Usage
-----
#### graphite-tools::default
Just include `graphite-tools` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[graphite-tools]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Ryutaro Yoshiba
