module EventsHelper

  def event_time_tag(event)

     if event.single_day?

        # <div class="common_date">
        #   <h3><%= @event.start_time.strftime("%b %-d, %Y") %></h3>
        #   <p>
        #     <%= @event.start_time.strftime("%l:%M %P") %> - <%= @event.end_time.strftime("%l:%M %P") %>
        #   </p>
        # </div>
      #  content_tag(:div,"sadasdsadsad", class: "common_date")
          content_tag(:div,class:"common_date") do
            content_tag(:h3,event.start_time.strftime("%b %-d, %Y")) +
              content_tag(:p,"#{event.start_time.strftime("%l:%M %P")} to #{event.end_time.strftime("%l:%M %P")}")
          end
     else
        # <div class="diff_date">
        #   <h3><%= @event.start_time.strftime("%b %-d, %Y  %l:%M %P") %></h3>
        #   <p>
        #     to
        #   </p>
        #   <h3><%= @event.end_time.strftime("%b %-d, %Y  %l:%M %P") %></h3>
        # </div>
        content_tag(:div,class:"diff_date") do
          content_tag(:h3,event.start_time.strftime("%b %-d, %Y  %l:%M %P")) +
            content_tag(:p,"to")+
              content_tag(:h3,event.end_time.strftime("%b %-d, %Y  %l:%M %P"))
        end
    end
  end
end
