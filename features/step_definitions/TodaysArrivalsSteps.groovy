import org.openqa.selenium.By
import static org.hamcrest.MatcherAssert.assertThat
import static org.hamcrest.Matchers.*

this.metaClass.mixin(cuke4duke.GroovyDsl)

Given(~/^the following arrivals:/) { cuke4duke.Table arrivalsTable
}

When(~/^I go to Today's Arrivals$/) { ->
	browser.get("http://localhost:3000/")
}

Then(~/^I should be on the Today's Arrivals page$/) { ->
	heading = browser.findElement(By.tagName("h1")).getText();
	assertThat(heading, is(equalTo("Today's Arrivals")))
}

Then(~/^I should see the following:$/) { cuke4duke.Table expectedArrivalsTable
}