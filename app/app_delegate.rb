class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    AFMotion::HTTP.post("http://localhost:9292/hello") do |result|
      alert = UIAlertView.new
      alert.message = 'Network request finished'
      alert.show
    end

    true
  end
end
