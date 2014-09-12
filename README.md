# ReactJS callbacks fail on Capybara-webkit

It would be great if they could play nicely together...

As it is, some of the React callbacks aren't getting called. Check out the
[Travis build] for more info, or check out the code and run `rake` yourself.

You'll see something like this:

```
React rendering
  when prerendered
    should text "Set in Props"
    should text "Always rendered"
    should text "Set in ComponentDidMount" (FAILED - 1)
    should text "Set in Initial State"
    should text "Set in ComponentWillMount"
  when regularly rendered
    should text "Set in Props" (FAILED - 2)
    should text "Always rendered" (FAILED - 3)
    should text "Set in ComponentDidMount" (FAILED - 4)
    should text "Set in Initial State" (FAILED - 5)
    should text "Set in ComponentWillMount" (FAILED - 6)

Failures:

  1) React rendering when prerendered should text "Set in ComponentDidMount"
     Failure/Error: scenario { expect(component).to have_content 'Set in ComponentDidMount' }
       expected to find text "Set in ComponentDidMount" in "(prerendered) Hello from the Greeting Component! Always rendered Set in Props Set in Initial State Set in ComponentWillMount"
     # ./spec/features/react_callbacks_spec.rb:13:in `block (3 levels) in <top (required)>'
     # ./spec/support/background_jobs.rb:14:in `block (3 levels) in <top (required)>'
     # ./spec/support/background_jobs.rb:5:in `run_background_jobs_immediately'
     # ./spec/support/background_jobs.rb:13:in `block (2 levels) in <top (required)>'

  2) React rendering when regularly rendered should text "Set in Props"
     Failure/Error: scenario { expect(component).to have_content 'Set in Props' }
       expected to find text "Set in Props" in "(rendered on client)"
     # ./spec/features/react_callbacks_spec.rb:20:in `block (3 levels) in <top (required)>'
     # ./spec/support/background_jobs.rb:14:in `block (3 levels) in <top (required)>'
     # ./spec/support/background_jobs.rb:5:in `run_background_jobs_immediately'
     # ./spec/support/background_jobs.rb:13:in `block (2 levels) in <top (required)>'

  3) React rendering when regularly rendered should text "Always rendered"
     Failure/Error: scenario { expect(component).to have_content 'Always rendered' }
       expected to find text "Always rendered" in "(rendered on client)"
     # ./spec/features/react_callbacks_spec.rb:19:in `block (3 levels) in <top (required)>'
     # ./spec/support/background_jobs.rb:14:in `block (3 levels) in <top (required)>'
     # ./spec/support/background_jobs.rb:5:in `run_background_jobs_immediately'
     # ./spec/support/background_jobs.rb:13:in `block (2 levels) in <top (required)>'

  4) React rendering when regularly rendered should text "Set in ComponentDidMount"
     Failure/Error: scenario { expect(component).to have_content 'Set in ComponentDidMount' }
       expected to find text "Set in ComponentDidMount" in "(rendered on client)"
     # ./spec/features/react_callbacks_spec.rb:23:in `block (3 levels) in <top (required)>'
     # ./spec/support/background_jobs.rb:14:in `block (3 levels) in <top (required)>'
     # ./spec/support/background_jobs.rb:5:in `run_background_jobs_immediately'
     # ./spec/support/background_jobs.rb:13:in `block (2 levels) in <top (required)>'

  5) React rendering when regularly rendered should text "Set in Initial State"
     Failure/Error: scenario { expect(component).to have_content 'Set in Initial State' }
       expected to find text "Set in Initial State" in "(rendered on client)"
     # ./spec/features/react_callbacks_spec.rb:21:in `block (3 levels) in <top (required)>'
     # ./spec/support/background_jobs.rb:14:in `block (3 levels) in <top (required)>'
     # ./spec/support/background_jobs.rb:5:in `run_background_jobs_immediately'
     # ./spec/support/background_jobs.rb:13:in `block (2 levels) in <top (required)>'

  6) React rendering when regularly rendered should text "Set in ComponentWillMount"
     Failure/Error: scenario { expect(component).to have_content 'Set in ComponentWillMount' }
       expected to find text "Set in ComponentWillMount" in "(rendered on client)"
     # ./spec/features/react_callbacks_spec.rb:22:in `block (3 levels) in <top (required)>'
     # ./spec/support/background_jobs.rb:14:in `block (3 levels) in <top (required)>'
     # ./spec/support/background_jobs.rb:5:in `run_background_jobs_immediately'
     # ./spec/support/background_jobs.rb:13:in `block (2 levels) in <top (required)>'

Finished in 16.69 seconds (files took 3.46 seconds to load)
10 examples, 6 failures

Failed examples:

rspec ./spec/features/react_callbacks_spec.rb:13 # React rendering when prerendered should text "Set in ComponentDidMount"
rspec ./spec/features/react_callbacks_spec.rb:20 # React rendering when regularly rendered should text "Set in Props"
rspec ./spec/features/react_callbacks_spec.rb:19 # React rendering when regularly rendered should text "Always rendered"
rspec ./spec/features/react_callbacks_spec.rb:23 # React rendering when regularly rendered should text "Set in ComponentDidMount"
rspec ./spec/features/react_callbacks_spec.rb:21 # React rendering when regularly rendered should text "Set in Initial State"
rspec ./spec/features/react_callbacks_spec.rb:22 # React rendering when regularly rendered should text "Set in ComponentWillMount"

Randomized with seed 9376

```

[Travis build]: https://travis-ci.org/graysonwright/reactrails-capybara-test
