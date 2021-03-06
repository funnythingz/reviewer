require 'rails_helper'

RSpec.describe Review, :type => :model do

  describe 'review' do

    before :each do
      create(:review)
      create(:review_draft)
      create(:review_bad)
    end

    describe 'valid' do
      let(:review) {create(:review)}
      it {
        expect(review).to be_valid
      }
    end

    describe 'method' do
      let(:review) {create(:review)}
      it {
        expect(review.is_published?).to be_truthy
      }

      let(:review_draft) {create(:review_draft)}
      it {
        expect(review_draft.is_draft?).to be_truthy
      }
    end

    describe 'scope' do

      context 'published' do
        it {
          expect(Review.published.first.published).to be_truthy
        }
        it {
          expect(Review.draft.first.published).to be_falsey
        }
      end

      context 'action' do

        context 'good' do
          it {
            expect(Review.good.first.action).to eq 'good'
          }

          it {
            expect(Review.good.first.comment).to eq "最高ですね！"
          }
        end

        context 'bad' do
          it {
            expect(Review.bad.first.action).to eq 'bad'
          }

          it {
            expect(Review.bad.first.comment).to eq "うんこですね！くそですね！"
          }
        end
      end
    end
  end
end
