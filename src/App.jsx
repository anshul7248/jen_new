import Banner from "./components/Banner";
import Contact from "./components/Contact";
import FAQ from "./components/FAQ";
import Footer from "./components/Footer";
import Hero from "./components/Hero";
import Navbar from "./components/Navbar/Navbar";
import Pricing from "./components/Pricing";
import Stats from "./components/Stats";

export default function App() {
  return(
    <>
    <Navbar/>
      <Hero />
      <Pricing/>
      <FAQ/>
      <Contact/>
      <Stats/>
      <Banner/>
      <Footer/>
    </>
  )
}