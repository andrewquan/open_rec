module EventsHelper
  def display_event_datetime(event)
    start_datetime = event.start_datetime
    end_datetime = event.end_datetime
    if end_datetime
      if event.same_day_event?
        # "Tuesday, October 5, 2017 at 3:20 PM - 5:20 PM"
        full_date_and_time(start_datetime) + " - " + time_only(end_datetime)
      else
        # "Oct 5, 2017 at 3:20 PM - Oct 6, 2017 at 5:20 PM"
        abbrv_full_date_and_time(start_datetime) + " - " + abbrv_full_date_and_time(end_datetime)
      end
    else
      full_date_and_time(start_datetime)
    end
  end

  private

    def full_date_and_time(datetime)
      # Monday, January 1, 2018 at 1:55 PM
      datetime.strftime("%A, %B %-d, %Y at %l:%M %p")
    end

    def abbrv_full_date_and_time(datetime)
      # Oct 5, 2017 at 3:20 PM
      datetime.strftime("%b %-d, %Y at %l:%M %p")
    end

    def time_only(datetime)
      # 1:55 PM
      datetime.strftime("%l:%M %p")
    end
end
