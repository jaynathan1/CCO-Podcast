# CCO Podcast — Weekly Research Brief

**Recording date:** Tuesday, June 10, 2026
**Release date:** Thursday, June 12, 2026
**Research window:** May 30 – June 6, 2026

---

## Lead Story (The "A-Block")

### The Token Bill Arrives: The Free Experimentation Era Is Over

**What happened:** Enterprise AI costs are spiraling even as per-token prices have collapsed. GPT-4-equivalent performance now costs roughly $0.40 per million tokens — down 98% from $20 per million in late 2022 — yet enterprise AI bills have risen an estimated 320%, with average enterprise AI budgets growing from $1.2 million per year in 2024 to $7 million in 2026 (The Next Web, June 5, 2026 — secondary, reported by multiple outlets citing Jellyfish and related research). The culprit: agentic AI consumes tokens at an entirely different order of magnitude. A simple linear chat interaction in 2023 cost roughly $0.04; an orchestrated agentic system in 2026 costs roughly $1.20 — 30x more per task. The consequence is real and public: Uber burned through its entire 2026 AI coding budget by April and capped all employees at $1,500/month per tool (LA Times/Bloomberg, June 2 — secondary). Microsoft revoked Claude Code licenses for roughly 100,000 engineers across its Experiences and Devices division (CNBC/Forbes, June 2 — secondary). GitHub switched Copilot's 4.7 million subscribers from flat-rate to token-based billing on June 1, with some power users reporting monthly costs jump from $29 to $750 overnight (TechCrunch/Tech Times, June 2 — secondary). Anthropic is ending its subscription-tier subsidy for agentic usage effective June 15, replacing it with a credit pool at standard API rates — community analysis found some users were extracting a 12:1 to 175:1 compute-to-price ratio from flat subscriptions (TechTimes, June 2 — secondary). The Linux Foundation announced the Tokenomics Foundation on June 4 — a new standards body bringing FinOps-style discipline to AI spend — with hyperscalers, frontier model providers, and major enterprise buyers as founding members (Globe Newswire, June 4 — primary). OpenAI head of enterprise Alexander Embiricos confirmed the shift in enterprise conversations: "Six months ago it was all about 'What can it do?' Now it's 'We're spending so much — what visibility, auditability, and token controls do you have?'" (TechCrunch, June 5 — secondary).

**Why it matters for the show:** This is the moment the "AI is basically free to experiment with" assumption breaks down. Every CS leader who built a business case for agentic workflows on current cost assumptions needs to recalculate. The gross margin math that Jay outlined in EP019 — that AI native services companies need to demonstrate expanding gross margins to prove AI leverage — now has a direct cost pressure working against it. Token economics isn't just a developer problem; it's the central constraint on whether AI-driven renewal motions, customer health monitoring, and automated QBRs ever achieve positive unit economics at scale.

**Discussion angles:**
- **The gross margin trap:** If agentic CS workflows cost 30x more per task than a simple model query, at what account volume and contract size does the "AI-driven renewal motion" break even? Jay built an EP019 framework for this — now there's actual cost data to stress-test it with.
- **The contrarian take:** Token costs are plummeting in price-per-token, but consumption growth is outpacing price cuts. Is this actually an *intelligence scarcity* problem (energy, data center constraints) or a *usage discipline* problem? And is the solution model routing (never use the most powerful model when a cheap one will do), or is it structural architecture changes?
- **What this means for vendor selection:** If token costs are your problem, does your CS platform choice suddenly matter a lot more? A Gainsight Atlas-style managed service has predictable (if opaque) token costs baked in. Rolling your own agentic stack means owning the token bill. Does "build vs. buy" now have a cost argument that didn't exist six months ago?

**Prior episode tie-in:** EP018 ("Aim Small, Miss Small" with Neil Erickson, May 21, 2026) — Jay said on air: *"While we thought token cost was going to go down, it probably is not. And there's going to be a shortage of intelligence in the industry based on energy, data center availability."* That prediction has now been validated with specific numbers and corporate blow-ups. Jay called this on the show weeks before enterprises started hitting the wall publicly. Also EP006 ("What We're Actually Building with AI Right Now") — referenced that some engineering teams were already capping AI spend at $100K per engineer per year; that cap is now mainstream at companies like Uber.

---

## Secondary Stories (B-Block)

### B-Block 1: The CS Org Is Restructuring in Real Time — SaaStr AI Annual Data Drop

**Headline:** SaaStr AI Annual 2026 reveals CS and GTM teams running at 90%+ AI throughput — and the org design that comes with it

**Source:** SaaStr blog (multiple posts, June 3–6, 2026) — secondary, first-person accounts from Jason Lemkin and conference speakers; Vercel/Anthropic operating metrics are self-reported at a Lemkin-organized conference

**The hook:** The SaaStr AI Annual last week produced the clearest operational benchmarks yet for what AI-native CS and GTM teams actually look like in production. Vercel CPO Tom Occhino disclosed that Vercel's AI agent handles 93% of customer support inquiries with no human intervention and a content agent handles 96% of first drafts. SaaStr itself runs its entire events business on 3 humans and 21+ AI agents; its "QBee" sponsor success agent manages all 150+ sponsor deliverables. Assembly AI's CS lead reported that simply switching the job title from "Head of Customer Success" to "Forward Deployed Engineer" immediately transformed their recruiting pipeline — two strong candidates in 2.5 months under the CS title vs. an immediate pipeline filling under FDE. Anthropic's Head of Industries Eleanor Dorfman disclosed that 54% of Anthropic's new enterprise logos in 2026 came through an AI-qualified self-serve path powered by Clay + Claude — with Intercom Fin replacing the traditional BDR/SDR role for enterprise self-serve qualification and routing.

**Discussion starter:** If Vercel is resolving 93% of support tickets autonomously and Anthropic replaced its SDR team with Clay + Claude, what is the CS org actually doing at those companies? And is this replicable at a mid-market B2B SaaS company that doesn't have Anthropic's engineering talent bench?

---

### B-Block 2: Salesforce Agentforce Crosses $1.2B ARR — But the Market Isn't Sure That's Good News

**Headline:** Agentforce hits $1.2B ARR as Q1 FY2027 earnings show AI momentum — but Salesforce is the Dow's worst performer and the bear thesis is "agents don't need seats"

**Source:** CRN/Reuters (Q1 FY2027 earnings coverage, May 28-30, 2026 — secondary, citing SEC filing); Bank of America research note — secondary/analyst

**The hook:** Salesforce's Q1 FY2027 earnings (May 28) showed Agentforce at $1.2 billion ARR amid surging enterprise demand — and the stock is down 32% year-to-date, making it the Dow's worst performer. The market is pricing in a structural threat: if AI agents don't need seats, Salesforce's entire business model is at risk. CEO Marc Benioff said on the earnings call: "In two years, there'll be more agents using Slack than people." Bank of America reinstated coverage with an Underperform rating, citing fears that AI agents from OpenAI, Anthropic, and others could render the seat-based CRM model obsolete. Meanwhile Southwest Airlines is resolving 20% of its 20 million annual support requests autonomously through Agentforce. The platform is both proving and undermining itself simultaneously.

**Discussion starter:** Jay's "sitting ducks vs. fortresses" framework from EP009 was built for this moment. Is Salesforce a fortress (too embedded to displace) or a sitting duck (the seat-based licensing model is the thing being disrupted)? And what does it mean for every CS leader who runs their team on Salesforce Service Cloud when the vendor is betting that agents will eventually replace the seat count those leaders are using to justify their budget?

---

### B-Block 3: Data Infrastructure Is Still the Wall — 97% Deploying AI, 5% Data-Ready

**Headline:** D&B survey: 97% of enterprises have active AI initiatives. Only 5% say their data is ready to support them.

**Source:** Dun & Bradstreet AI Momentum Survey (10,000 businesses) via Computerworld, May 13, 2026 — soft attribution (single benchmark study); Marlabs 2026 Enterprise AI Adoption Playbook (synthesizing 30,000+ leaders across 10 surveys) via Markets Business Insider, June 2 — soft attribution (commissioned research)

**The hook:** The D&B survey of 10,000 businesses found 97% have active AI initiatives but only 5% say their data is ready to support them. Top blockers: data access problems (50%), privacy/compliance (44%), data quality and integrity (40%), lack of system integration (38%). Separately, Marlabs synthesized 10 major enterprise AI surveys covering 30,000+ leaders and found that 88% of enterprises are deploying AI but only 12% of CEOs report both lower costs AND higher revenue from AI. Gartner estimates up to 60% of AI projects may be abandoned due to lack of AI-ready data. This week Gainsight + Glean announced a native integration bringing customer health scores, renewal timelines, and sentiment data into Glean's enterprise search alongside Slack, email, and Confluence — a practical attempt to build a "unified customer context" layer that AI agents can actually reason from.

**Discussion starter:** The data problem keeps showing up on this show. Jay covered it in EP010. The tools are now solving it at the infrastructure layer (Gainsight MCP, HubSpot MCP, ZoomInfo GTM.AI, Snowflake governance) — but 95% of CS teams aren't there yet. Is the answer to wait for the vendors to solve it, or to start treating data architecture as a CS leader responsibility right now?

---

## Quick Hits (3–5 items)

1. **Sierra AI raises $950M at $15.8B valuation** — Bret Taylor's enterprise AI agent company crosses $150M ARR in eight quarters. Taylor estimates $400 billion is spent annually on customer service globally. One in three of the world's largest banks are already Sierra customers. The scale of capital flowing into AI-native customer service alternatives is no longer theoretical. [TechCrunch, May 4, 2026 — secondary; just outside 7-day window but directly relevant trend]

2. **Wix cuts 1,000 jobs (20% of workforce), CEO explicitly cites "fast evolution of AI"** — Wix's largest layoff in company history. Freshworks also cut 500 jobs (11% of global workforce) in April–May, with CEO stating "over half of our code is written by AI," with QA roles hit hardest. Stanford HAI data: software developer employment for workers ages 22–25 fell nearly 20% since 2024. [Reuters/multiple outlets — secondary; Freshworks CEO quote is primary]

3. **Anthropic passes OpenAI in US business adoption for the first time** — The May 2026 Ramp AI Index (corporate card data, 50,000+ US companies) shows Anthropic at 34.4% of US business AI adoption vs. OpenAI at 32.3%. Anthropic quadrupled business adoption in one year; OpenAI grew 0.3%. ~16% of US businesses now pay for both Claude and ChatGPT simultaneously — multi-model stacks are the enterprise norm. [Forbes, June 5, 2026 — secondary, citing Ramp primary data]

4. **Pendo hires first Chief AI Officer, launches Agent Analytics** — Pendo is building the first observability layer specifically for AI agent behavior in products, not just human users. As AI agents start using your product alongside humans, "product analytics" needs to track both. Pendo also launched its MCP server and appeared in Claude's Connectors Directory. [PR Newswire/Morningstar, May 21, 2026 — primary]

5. **Tech layoffs hit 142,000 in first five months of 2026** — up 33% over the same period in 2025, even as hyperscalers report record revenues. The four hyperscalers (Amazon, Microsoft, Alphabet, Meta) committed to a combined $700 billion in AI capex for 2026, nearly double 2025. Profitable companies are cutting human roles to fund AI infrastructure, not to manage distress. [Tech Times, May 29-30, 2026 — secondary, citing trackerdata]

---

## Trend Watch

**The pattern:** MCP (Model Context Protocol) is becoming the connective tissue of the enterprise AI stack — and every major CS/revenue platform shipped MCP connectivity in the past 30–60 days.

**Evidence:**
- Gainsight launched MCP support for Gainsight CS and Staircase AI (April 2026), meaning AI agents can now query customer health scores, renewal timelines, and sentiment data in natural language and take action in Gainsight without opening a dashboard
- Gainsight's Staircase AI MCP connector went live in the Anthropic Claude store (April 23, 2026)
- HubSpot's remote MCP server went GA (April 13, 2026), giving any MCP-compatible AI client read/write access to CRM objects across 280,000+ customers
- Outreach launched a bidirectional MCP client + server (June 3, 2026), making it the first revenue orchestration platform with full MCP capability — agents can operate across ZoomInfo, Snowflake, Amplitude, Seismic, Demandbase, and others
- ZoomInfo launched GTM.AI as a headless verified data layer (June 2) with Claude integration (June 5) — repositioning from "database you log into" to "intelligence layer that feeds your agents"
- Pendo launched its MCP server and appeared in Claude's Connectors Directory and ChatGPT's app directory
- Snowflake Summit 2026 centered on "agentic enterprise" governance — Horizon Context, Cortex Sense, Agent Identity

**Why flag it now:** We're past the point where MCP is an interesting Anthropic API initiative. The CS tech stack is going headless. Within the next 12–18 months, CS operations will be largely directed by AI agents querying these MCP endpoints — not by humans logging into dashboards. The interesting question for CS leaders isn't *whether* to care about MCP. It's: *Is my customer data clean enough to be useful when agents start hitting it?* The data readiness problem (D&B: 5% ready) and the MCP buildout are on a collision course.

---

## Suggested Episode Arc

1. **Open (5 min):** Jeff's baby was due June 11 — how did that go? Jay was at Gainsight Pulse last week — what's the general vibe from the CS community right now heading into summer? Uncommon community launch update (targeting ~June 15). Quick check-in before going deep.

2. **Lead discussion (15–20 min):** The token bill arrives. Pull up the actual numbers — Uber capped at $1,500/month, Microsoft pulled 100K Claude Code licenses, GitHub Copilot bills jumping 10x-50x overnight. Jay flagged this in EP018: "while we thought token cost was going to go down, it probably is not." Now what? Walk through what this means for any CS leader who's built a business case for agentic workflows. At what point does the economics of a per-account renewal motion stop working?

3. **Pivot (10 min):** SaaStr AI Annual data — Vercel running 93% AI support, Anthropic replacing its SDR team with Clay + Claude, Assembly AI's FDE recruiting story. Is this real at non-frontier-AI companies? Jeff just hired an FDE at Junction (EP017) — how does the org design question look now with these benchmarks?

4. **Build/show-and-tell segment (10 min):** MCP trend watch. Walk the audience through what "the CS stack going headless" actually means. Jay could sketch the architecture: today CS leaders log into Gainsight/HubSpot/Pendo dashboards; in 18 months agents query those endpoints directly and report to you. What do you need to do *right now* to make sure your data is clean enough for that world?

5. **Quick hits + close (5–10 min):** Sierra at $15.8B (the $400B customer service market is being invested in seriously), Salesforce Agentforce at $1.2B ARR while the stock is -32% YTD, tech layoffs at 142K (and profitable companies cutting to fund AI capex). Close: what's Jay and Jeff actually building before the next episode?

---

## Guest Suggestion

**Eleanor Dorfman** — Head of Industries, Anthropic
**Why now:** Just presented at SaaStr AI Annual 2026 disclosing that Anthropic replaced most of its SDR team with AI (Clay + Claude) and drives 54% of new enterprise logos through an AI-qualified self-serve path. She can speak directly to what it means to dogfood AI for go-to-market at a company building the AI itself — and she's dealing with the same token cost pressures from the customer side that the show is covering this week.
**What she'd bring:** Concrete implementation detail (the actual stack Anthropic uses for enterprise sales and CS), honest perspective on what breaks when you replace human GTM with AI, and the view from the frontier model provider side of enterprise AI cost management.

---

## Fact-Check Notes

**Corrections and verifications made between draft and final:**

1. **Salesforce Agentforce ARR:** Research surfaced two figures — $800M (Q4 FY2026, ending Jan 2026) and $1.2B (Q1 FY2027, ending April 30, 2026, reported May 28). Both are real; the $1.2B is the most current and falls within the research window. Brief uses $1.2B from Q1 FY2027 earnings. Source: CRN/Reuters citing earnings release — secondary.

2. **Anthropic subscription subsidy ending June 15:** Reported by TechTimes (June 2) as a billing restructure announcement. Not independently verified against Anthropic's own announcement page. The 12:1 and 175:1 subsidy ratios are community estimates, not company-disclosed figures. **Treat as soft — confirm before quoting specific ratios on air.**

3. **"One company spent $500M on Claude in a single month":** Cited by TechCrunch and The Next Web but the company is unnamed. Directionally credible given the surrounding context (Microsoft, Uber, etc.) but cannot be verified to a primary source. **Cut from the brief body; referenced only as context in research.** Jay and Jeff should not quote this number without disclosure.

4. **The Next Web token stats ($1.20/agentic task, 30x multiplier, 320% enterprise bill increase):** These are from The Next Web's June 5 reporting drawing on Jellyfish research and industry estimates. Not independently verified against the Jellyfish primary report. **Tagged secondary; directionally useful but not press-release-citable.**

5. **D&B 5% data-ready stat:** From a D&B AI Momentum Survey of 10,000 businesses, cited in Computerworld (May 13). Single-firm benchmark. **Tagged soft — single benchmark.** The Marlabs 12% CEO success rate is from commissioned research synthesizing 10 other surveys — also soft attribution.

6. **Sierra $950M raise and $150M ARR:** From TechCrunch (May 4, 2026). Outside the strict 7-day window but included in Quick Hits as a trend marker. TechCrunch is secondary but highly credible for funding rounds. **Flagged as slightly outside window.**

7. **Wix layoff 20% figure:** Confirmed by Reuters wire and CEO public statement. High confidence.

8. **Freshworks "half our code is written by AI":** Direct CEO quote confirmed across multiple outlets (Economic Times, Outlook Business, Reuters). High confidence.

9. **Ramp AI Index — Anthropic 34.4% vs OpenAI 32.3%:** Primary data from Ramp's corporate card analytics across 50,000+ US companies. Forbes coverage (June 5) cites Ramp's lead economist directly. **Primary data, secondary sourcing — high confidence.**

**How items from `next_episode.md` were handled:**

- **This Week section:** Empty — Jay/Jeff had not seeded it before this run. Jay's "rising cost of intelligence" request (via Hal, June 6) was treated as a required lead/B-block candidate and became the Lead Story.
- **Warm Threads:** Empty — no items to carry forward.
- **Parking Lot items:**
  - *"The AI architect role"* — not surfaced in this week's news; left in Parking Lot.
  - *"Comp data for TAMs / FDEs / AI-native CS roles"* — Assembly AI's FDE recruiting story (SaaStr AI Annual) is adjacent but not comp data per se. Left in Parking Lot; B-Block 1 references the role dynamic.
  - *"Vendor-services tension"* — Gainsight Atlas already covered in EP020 (June 4). Not repeated.
  - *"Company as code"* — MCP trend watch is functionally about this concept. Not directly pitched as the Parking Lot item but addressed substantively.
  - *"Token economics in CS at scale"* — Became the Lead Story. Move to Recently Covered.

**Transcript review completed in Step 0:**
- EP019, EP020, EP018, EP015, EP017, EP016, EP009, EP010, EP006, EP014 reviewed or searched.
- EP020 transcript partially captured (transcript ends mid-episode due to Riverside feed limitation; "player-coach" segment not transcribed). Noted for future runs — may need to verify Riverside transcript completeness on subsequent episodes.
- Callbacks considered but cut: EP003 (Context is King) — data MCP angle was relevant but episode was early-stage and the specific callback wasn't crisp enough for the brief. EP012 (CarParts.com support stack) — Vercel's 93% AI support metric is a better/fresher version of the same story.
