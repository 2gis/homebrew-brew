# MIT License
#
# Copyright (c) 2017 Wix.com
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# typed: false
# frozen_string_literal: true

class Applesimutils < Formula
  desc "Apple simulator utilities"
  homepage "https://github.com/2gis/AppleSimulatorUtils"
  url "https://github.com/2gis/AppleSimulatorUtils.git",
    tag:      "0.9.11",
    revision: "450ac8ed62130ea74228d8cbec9ee4b40cc6092a"
  head "https://github.com/2gis/AppleSimulatorUtils.git"

  depends_on xcode: ["14.3.1", :build]

  def install
    system "./buildForBrew.sh", prefix
  end

  test do
    system "#{bin}/applesimutils", "--help"
  end
end
