#!/usr/bin/env ruby

module PuppetBundler
  def PuppetBundler.parse(metadata)

    f = File.read(metadata)
    #modulepath = ENV['MODULEPATH']

    begin
      parsed = JSON.parse(f)
    rescue
      abort("Error: Unable to parse json. There is a syntax error somewhere.")
    end

    deps = parsed['dependencies'].shuffle!
    deps.each do |dep|
      name = dep['name']
      vers = dep['version_requirement']
      out = %x( puppet module install -v '#{vers}' #{name} )
      out.lines.each do |line|
        puts line unless line =~ /Notice:/
      end
    end

  end
end
