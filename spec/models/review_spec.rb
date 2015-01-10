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

      context 'status' do
        it {
          expect(Review.published.first.status).to eq 'published'
        }
        it {
          expect(Review.draft.first.status).to eq 'draft'
        }
      end

      context 'action' do

        context 'good' do
          it {
            expect(Review.good.first.action).to eq 'good'
          }

          it {
            expect(Review.good.first.comment).to eq "けいたん歯科は最高なんだお！"
          }
        end

        context 'bad' do
          it {
            expect(Review.bad.first.action).to eq 'bad'
          }

          it {
            expect(Review.bad.first.comment).to eq "けいたん歯科はほんとにうんこですね。ぼったくりですね。虫歯どころか全部抜かれやがったんだぜ！どういうことなんだってばよ！"
          }
        end
      end
    end
  end
end
