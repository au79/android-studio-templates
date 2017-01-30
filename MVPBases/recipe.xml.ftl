<?xml version="1.0"?>
<recipe>

  <instantiate from="src/app_package/BasePresenter.java.ftl"
               to="${escapeXmlAttribute(srcOut)}/BasePresenter.java" />
  <instantiate from="src/app_package/BaseView.java.ftl"
               to="${escapeXmlAttribute(srcOut)}/BaseView.java" />
  <instantiate from="src/app_package/BaseFragment.java.ftl"
               to="${escapeXmlAttribute(srcOut)}/BaseFragment.java" />

  <open file="${srcOut}/BasePresenter.java"/>
</recipe>
