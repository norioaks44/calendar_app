require 'rails_helper'

RSpec.describe Event, type: :model do
  before do
    @event = FactoryBot.build(:event)
  end

  describe '活動日新規登録' do
    it "タイトルが空だと登録できない" do
      @event.title_id = nil
      @event.valid?
      expect(@event.errors.full_messages).to include "Title Select"
    end
    it "タイトルが'id=1'だと登録できない" do
      @event.title_id = 1
      @event.valid?
      expect(@event.errors.full_messages).to include "Title Select"
    end

    it "日付が空だと登録できない" do
      @event.start_time = nil
      @event.valid?
      expect(@event.errors.full_messages).to include "Start time can't be blank"
    end

    it "集合時間が空だと登録できない" do
      @event.meeting_time_id = nil
      @event.valid?
      expect(@event.errors.full_messages).to include "Meeting time Select"
    end
    it "タイトルが'id=1'だと登録できない" do
      @event.meeting_time_id = 1
      @event.valid?
      expect(@event.errors.full_messages).to include "Meeting time Select"
    end
    
  end
end