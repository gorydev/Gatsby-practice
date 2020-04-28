import React from "react"
import Header from "../components/header"
import Layout from "../components/layout"
import { Link } from "gatsby"

export default () => (
  <Layout>
    <Link to="/contact/">Contact</Link>
    <Header headerText="Hello Gatsby!" />
    <p>
      Im building great sites using Gatsby. And also using Docker-Compose, this
      is a simple project
    </p>
    <img src="https://source.unsplash.com/random/400x200" alt="" />
  </Layout>
)
