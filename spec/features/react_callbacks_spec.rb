require 'spec_helper'

feature 'React rendering', :js do
  before { visit root_path }

  context 'when prerendered' do
    let(:component) { find('#prerendered') }

    scenario { expect(component).to have_content 'Always rendered' }
    scenario { expect(component).to have_content 'Set in Props' }
    scenario { expect(component).to have_content 'Set in Initial State' }
    scenario { expect(component).to have_content 'Set in ComponentWillMount' }
    scenario { expect(component).to have_content 'Set in ComponentDidMount' }
  end

  context 'when regularly rendered' do
    let(:component) { find('#rendered') }

    scenario { expect(component).to have_content 'Always rendered' }
    scenario { expect(component).to have_content 'Set in Props' }
    scenario { expect(component).to have_content 'Set in Initial State' }
    scenario { expect(component).to have_content 'Set in ComponentWillMount' }
    scenario { expect(component).to have_content 'Set in ComponentDidMount' }
  end
end
