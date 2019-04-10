### Campaign

`Campaign` properties:

- `id`
- `job_id`
- `status`: one of [active, paused, deleted]
- `reference`: corresponds to Ad’s ‘reference’
- `description`: text description of an Ad

### Ruby
ruby 2.5.3
Rails 5.2.2

### Setup
- `rake db:migrate`
- `rake db:seed`

In Order to fetch only remote campaigns
- `Campaigns::Fetcher.fetch!`

To load Discrepancies
- `Campaigns::Discrepancies::Fetcher.fetch!`

### Service output

```
[
  {
    "remote_reference": "1",
    "discrepancies": [
      "status": {
        "remote": "enabled",
        "local": "disabled"
      },
      "description": {
        "remote": "Description for campaign 11",
        "local": "Ruby on Rails Developer"
      }
    ]
  }
]
```