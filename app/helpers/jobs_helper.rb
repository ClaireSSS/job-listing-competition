module JobsHelper

  def render_job_status(job)
    if job.is_hidden
      content_tag(:span, "", :class => "fa fa-star")
    else
      content_tag(:span, "", :class => "fa fa-smile-o")
    end
  end
end
