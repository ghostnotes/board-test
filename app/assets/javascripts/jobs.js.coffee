# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
do ->
  init = () ->
    initJobTable()

  initJobTable = () ->
    jobTables = ['job_table_1', 'job_table_2']
    for jobTable in jobTables
      tableRecordName = '#' + jobTable + ' tr'
      $(tableRecordName).each((i) ->
        $(this).bind 'click', ->
          jobId = $(this).attr 'job_id'
          window.location.href = '/jobs/' + jobId
      )

  $(document).on 'ready page:load', ->
    init()
