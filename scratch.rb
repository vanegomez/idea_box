# <!--<div>-->
# <!--<%#= form_tag( "#", method: "post" ) %>-->
#     <!--<%#= label_tag "Title" %>-->
#     <!--<%#= text_field_tag :title %>-->
#     <!--<%#= label_tag :body, "Body" %>-->
#     <!--<%#= text_field_tag :body  %>-->
#     <!--<%#= submit_tag "Create Idea" %>-->
#   <!--</div>-->



# <%= form_tag '/ideas', method: 'post' do %>
#       <%= label_tag "Title" %>
#   <%= text_field_tag :title, "", class: "title" %>
#       <%= label_tag "Body" %>
#   <%= text_field_tag :body, "", class: "body" %>
#       <%= submit_tag "Create Idea" %>
#   <% end %>
