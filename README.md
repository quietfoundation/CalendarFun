#Quiet Foundation Code Problem

##Instructions

1. Fork the Github project https://github.com/quietfoundation/CalendarFun to your personal account
2. Clone your fork 
3. Once you clone the project and run

  ```bundle install```

4. Seed your database
  ```rake db:migrate db:seed```

5. You should be able to launch the app using

  ```rails s``` or ```unicorn_rails -l3000```

6. You should see a simple calendar appear on the page.

  (http://localhost:3000)

## Tasks
1. **Very Easy Task:** Add a link on the page to create a new event

2. **Debug Task:** When hovering over the "One hundred days" event, only the first week becomes highlighted.  Fix the bug such that all of the weeks this event lasts becomes highlighted when hovering any of its weeks.

3. **Moderate Task:** On the Event form, replace the group of drop downs for date input with a fancier datetime UI picker.

4. **Moderate Task:** Instead of taking the user to another page when clicking on an event, display the event details in a div popup.

##Submission
1. Push your changes to your fork and submit a pull request.
