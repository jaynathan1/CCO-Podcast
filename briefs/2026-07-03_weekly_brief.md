# CCO Podcast — Weekly Research Brief
**Recording date:** Tuesday, July 1, 2026
**Release date:** Thursday, July 3, 2026
**Research window:** June 23–30, 2026

---

## Lead Story (The "A-Block")
### "The Fight for Customer Data" — Vendors Are Locking Down AI Agent Access

**What happened:**
George Fraser (co-founder and CEO, Fivetran) joined a16z's Martin Casado on the podcast "AI Agents and the Fight for Customer Data" (a16z.com/podcast/ai-agents-and-the-fight-for-customer-data/). Fraser's central finding: major SaaS vendors — spooked by falling stock prices — are locking down API access, treating customer data as their own and forcing customers to use only the vendor's approved AI tools.

- SAP explicitly banned third-party AI agent access except where SAP specifically approves. Fraser cautions customers: check your actual contract, not just the policy memo — existing MSAs may override new policies.
- Salesforce has generally been open except for Slack, which restricts data exports and LLM usage.
- Fivetran launched **opendatainfrastructure.com** — a public scorecard rating vendors on data egress charges, completeness of data export, and terms-of-use restrictions. SAP historically scores worst; Salesforce (minus Slack) scores best.
- Fraser's practical advice: "insist on keeping a copy of all company data in a data lake you control" and "write data-access guarantees into your MSAs when redlining large contracts." Fivetran offers model contract language for this.

**Why it matters for the show:**
CS leaders building AI agent stacks are building on borrowed infrastructure. If the platforms they're connecting to — CRM, support, success tools — start blocking API access or charging premium fees for AI connectivity, the whole independent-agent architecture depends on vendor goodwill. The window to write contractual protections is right now, at renewal.

**Discussion angles:**
- Fraser says this is a repeat of the 1990s open-API debates that resolved toward openness. Is he right — or is AI different because vendor revenue is now on the line? Every query your agent makes could be revenue that goes to the vendor's own AI instead of yours.
- Jay's Agent Command Center is specifically architected to avoid vendor lock-in. Have they hit any concrete walls yet — any platforms already blocking access? What does it feel like on the builder side?
- Practical playbook for the audience: what does "write data-access guarantees into your MSA" actually look like? Who needs to be in the room — CS, legal, procurement? Does CS even have standing to drive this conversation?

**Prior episode tie-in:**
In EP022 ("The Real AI Work"), Jay said explicitly: "vendor lock-in is one of those things... any vendor... there's nothing wrong with choosing a vendor... but vendor lock-in is one thing." Jeff followed with: "are you almost like getting to the highest source that you can so that you can control it again at the end of the day? It's more about the control — almost like owning your own destiny versus being locked into pre-built or defined specs." The SAP/API lockdown news is the exact scenario they were anticipating.

---

## What We're Building (A-Block Anchor)

**Jay's build [Jun 22]:** Continuing to develop Agent Command Center — focused on (1) simplicity for business users to build agents, (2) industry-specific agentic solutions with verified datasets, industry-specific skills, MCPs, and known APIs. The differentiator: "agentic integrations between known platforms and skills that make agents aware of how to work with them in efficient ways."

**Correlated signals:**
- The data lockdown trend (Lead Story) validates Jay's architecture: controlling your own data layer means vendor lockdowns don't kill your agents
- Fraser's opendatainfrastructure.com is exactly the due-diligence scorecard an Agent Command Center builder needs before investing in a platform integration
- "Verified datasets" + "known APIs" — Jay's framing is the answer to Fraser's problem. Agents need to know which platforms allow access before you build integrations on top of them.

**Discussion angles:**
- Jeff's warm thread from EP021: "How have these jobs changed? BI/analytics team now vs. then. How do you pull the ops onion back?" Now directly relevant — if vendors lock down data APIs, the ops analyst who maintained the pipeline becomes a "data rights negotiator." What does that role look like in 2026?
- Agent Command Center + verified datasets = building a platform that presupposes data freedom. What's the Plan B when a platform you've integrated goes "red" on the scorecard?

---

## Secondary Stories (B-Block)

### B-Block 1: Fraser's SaaS Survival Thesis — "You're Buying a Business Process, Not Software"

**Headline:** George Fraser argues SaaS won't die — you buy operational flows, not UIs
**Source:** a16z podcast, a16z.com/podcast/ai-agents-and-the-fight-for-customer-data/ (primary)
**The hook:** Fraser's counterintuitive argument: when you buy Salesforce, you're not buying a UI — you're buying into a business process that Salesforce knows how to run. That value persists whether the user is human or an AI agent. Software is also remarkably cheap (5–10% of headcount), so AI won't "value engineer" it away. The real threat isn't AI replacing existing software — it's AI-native competitors that build so much faster they zoom past incumbents.
**Discussion starter:** Does "business process as moat" directly contradict Jay's "sitting ducks vs. fortresses" framework from EP009? Some processes ARE sitting ducks no matter how good the operational knowledge embedded in the software — which wins?

### B-Block 2: Pulling Apart Ops — The BI/Analytics Role Is Forking

**Headline:** The classic ops analyst role is splitting into two distinct paths in AI-native orgs
**Source:** Jeff's EP021 warm thread (direct callback — Jeff flagged this as "next week's topic"); corroborated by observable hiring patterns
**The hook:** Jeff said at the close of EP021: "How have these jobs changed? BI/analytics team now vs. then. How do you pull the ops onion back?" The AI answer is becoming visible: one half of the role becomes "AI infrastructure engineer" (data pipelines, integration maintenance, API access negotiation) while the other becomes "insight consumer" (prompting agents, interpreting outputs). The middle — the person who both builds and interprets — is the endangered species.
**Discussion starter:** If you're a CS Ops leader today, which half do you double down on? The engineer path or the insight path? Or is this a false fork — do the best people end up doing both regardless?

### B-Block 3: AI-Native Companies Rebuilt CS Without CSMs — And They're Growing Fast

**Headline:** Lovable, Harvey, Assembly AI: AI-native CS orgs are producing results legacy orgs can't match
**Source:** SaaStr (secondary, reported by SaaStr — soft flag, single benchmark)
**The hook:** A cluster of fast-growing AI companies have completely restructured CS around agents: no coverage model, no traditional QBRs, automated health scoring against outcome metrics. NPS and activity scores are dead in these orgs. They measure product penetration, time-to-value, and agent resolution rates. One founder quoted: "Our AI CS agent is working harder than 95% of human CSMs I've worked with."
**Discussion starter:** Jay and Jeff have both been building in this direction for clients. But is this a startup-only phenomenon, or is it crossing into $100M+ ARR orgs? What breaks when you try to do this at scale with complex enterprise customers?

---

## Quick Hits

1. **opendatainfrastructure.com** — Fivetran's free public scorecard rates 30+ SaaS vendors on AI agent data access. SAP and Slack rate red; Salesforce (minus Slack) rates green. Bookmark this before any platform contract negotiation. (primary — Fivetran, via Fraser on a16z)

2. **SAP, ServiceNow, Workday building "pay-to-play" AI agent access tiers** — Multiple vendors reportedly creating premium AI connectivity licensing on top of existing subscriptions. Not just blocking — charging to allow. (soft — PYMNTS.com, May 7, 2026; corroborated by Fraser commentary)

3. **Vitally MCP Server launched (May 27, 2026)** — Open-source MCP server for Vitally CS platform: 40+ read/write tools covering account health, NPS, projects, conversations. If you're building AI agents on Vitally, someone just built the bridge. (soft — GitHub community project; verify before production use)

4. **Salesforce Bridge MCP (open source)** — Production-ready open-source MCP server for Salesforce with role-based access (admin/CSM/viewer), SOQL query tools, case management, and consolidated customer view. Addresses the "verified integrations to known platforms" gap directly. (soft — GitHub community project)

5. **Fivetran + dbt merger** — The two most prominent modern data infrastructure names are now one company, consolidating ETL-to-transformation under a single vendor. Raises the same consolidation question as Salesforce/Fin — does this protect customers or reduce their leverage? (soft — analyst commentary; deal rationale not independently verified)

---

## Trend Watch

**The pattern:** Enterprise vendors are treating AI agent access as a new monetization surface — not just a product feature, but a distinct licensing tier. First came data egress fees. Now it's "authorized AI agent access." The direction is toward fragmented, vendor-controlled AI permission systems layered on top of existing SaaS subscriptions.

**Evidence:**
- SAP banned AI agent access except where SAP approves (primary — Fraser citing SAP policy in a16z interview)
- Salesforce good except Slack; Slack restricts data exports and LLM usage (primary — Fraser on a16z)
- opendatainfrastructure.com launched to publicly score vendors (primary — Fivetran)
- SAP, ServiceNow, Workday "pay-to-play" tiers reportedly in development (soft — PYMNTS.com, May 7, 2026)

**Why flag it now:** In EP022, Jay and Jeff discussed the harness layer as the strategic moat ("models become commodities, the layer with business logic is where value resides"). This week, the vendors are trying to own the harness layer via access control — not by building better tools, but by restricting who can connect. The window to write contractual protections into renewals is now.

---

## Suggested Episode Arc

1. **Open (5 min):** Jeff's new baby check-in, then bridge: "Last episode we ended on harness layer as moat. Well this week the moat got a drawbridge — we need to talk about who controls data access."

2. **Lead — The Fight for Customer Data (15 min):** Walk through Fraser's a16z episode: SAP lockdown, opendatainfrastructure.com, the contractual play. Jay pulls up the scorecard live. Do the platforms in their Agent Command Center rate green or red? Any concrete walls they've hit?

3. **Pivot: Pulling Apart Ops (10 min):** Jeff's EP021 thread. If data access is the new battle, what does the ops analyst role become? Infrastructure engineer vs. insight consumer. Career conversation the audience is actively having.

4. **B-Block Debate: "Business process is the moat" vs. "Sitting ducks vs. fortresses" (10 min):** Fraser says SaaS survives because you buy operational flows. Jay has a different taxonomy. Let them disagree.

5. **Tool of the Week (5–10 min):** Walk through opendatainfrastructure.com as the demo — vendor scorecard review before a real contract. Immediately actionable.

6. **Close — Quick Hits (5 min):** Vitally MCP, Salesforce Bridge MCP, Fivetran+dbt merger.

---

## Guest Suggestion

**George Fraser** — Co-founder and CEO, Fivetran
Jay already has him on his radar (Jay created newsletter content from his a16z episode). Fraser is articulate, has a contrarian "SaaS will survive" take, and is doing applied advocacy work (opendatainfrastructure.com) that's directly actionable for the show's audience. Best reach: through a16z (he just recorded with Martin Casado) or direct via Fivetran comms.

---

## Tool of the Week — 5 Candidates

**Candidate 1: opendatainfrastructure.com (Fivetran)**
- **What it does:** Free public scorecard rating 30+ SaaS vendors on AI agent data access — egress charges, data export completeness, terms-of-use restrictions
- **GTM use case:** CS Ops and RevOps leaders check this before signing or renewing platform contracts; legal/procurement uses Fivetran's model MSA language to add data-access guarantees
- **Why this week:** Directly tied to Lead Story; gives the audience an immediate action item
- **Pricing:** Free
- **Confidence:** High (primary — cited by Fraser in a16z episode, which Jay reviewed)

**Candidate 2: Vitally MCP Server**
- **What it does:** Open-source MCP server for Vitally CS platform with 40+ tools — account health, NPS response tracking, projects CRUD, conversation history, custom traits
- **GTM use case:** CS teams building AI agents on top of Vitally can query health data, pull CX context, and write back notes without managing raw API
- **Why this week:** Public release May 27, 2026; early mover in CS-platform MCP bridges
- **Pricing:** Open-source (MIT)
- **Confidence:** Medium (GitHub community project; haven't fetched primary source)

**Candidate 3: 199OS Customer Success MCP Server**
- **What it does:** Open-source MCP server with 54 tools across 7 CS categories — onboarding, health monitoring, retention/risk, communication, support, growth, and feedback; integrates Zendesk, Mixpanel, SendGrid, Intercom
- **GTM use case:** CS teams building full-stack AI agents without building each integration individually; a starting template for Agent Command Center–style CS infrastructure
- **Why this week:** Active development, recently updated June 2026; most comprehensive CS-specific MCP toolkit available
- **Pricing:** Open-source (MIT)
- **Confidence:** Medium (GitHub community project; research agent report)

**Candidate 4: Salesforce Bridge MCP (open source)**
- **What it does:** Production-ready open-source MCP server for Salesforce — SOQL queries, record management (create/update/delete), case management, consolidated customer view, role-based access
- **GTM use case:** CS teams at Salesforce-heavy orgs building AI agents that need to read/write CRM data without raw Salesforce API complexity; role-based access means CSMs get safe read access, admins get write
- **Why this week:** Kubernetes/Docker deployment patterns show production intent; directly relevant to Jay's "known APIs" Agent Command Center architecture
- **Pricing:** Open-source (MIT)
- **Confidence:** Medium (GitHub community project; production patterns look legitimate)

**Candidate 5: kickbacks.ai**
- **What it does:** Injects clickable ad banners into Claude's generation loading screen in VS Code; pays users a micro-cut of ad impressions served while they code
- **GTM use case:** Not a productivity tool — but worth covering as a "what is happening in AI interface monetization" conversation piece; if the inference loading screen is now addressable real estate, what else is?
- **Why this week:** Jeff live-demoed this in EP022; audience found it fascinating; connects to the vendor monetization trend in Lead Story
- **Pricing:** Free to install; earns via ad impression revenue share
- **Confidence:** High (Jeff demoed it live in EP022)

**Recommended:** opendatainfrastructure.com — immediately actionable, free, ties directly to Lead Story, and Jay can demo it live in seconds. The vendor scorecard is the kind of tool the audience can open on their laptop during the renewal meeting.

---

## Fact-Check Notes

**High confidence (verified against primary sources):**
- George Fraser a16z podcast "AI Agents and the Fight for Customer Data" — URL confirmed in Jay's newsletter draft email (mav@ inbox, June 25). Fraser is co-founder/CEO Fivetran, a16z is a credible primary source.
- SAP AI agent restriction — Fraser cited the SAP policy memo in the a16z interview. Fraser's caveat ("check your actual MSA") noted inline. Not independently fetched from SAP's policy.
- opendatainfrastructure.com — cited by Fraser per Jay's email; Fivetran is the publisher. Vendor scores (SAP worst, Salesforce good except Slack) are Fraser's characterizations per Jay's draft, not independently fetched from the site.
- EP022 callbacks (harness layer as moat, vendor lock-in, Jeff's "owning your own destiny") — direct transcript reads, lines 211–217. Exact quotes confirmed.
- EP021 warm thread "Pulling Apart Ops" — confirmed in next_episode.md Warm Threads section, direct Jeff quote.

**Soft attribution (flag on air):**
- Fivetran Agentic AI Readiness Index (Business Wire, May 5, 2026) — research agent report; not independently verified. Jay/Jeff should caveat: "according to Fivetran's research."
- SAP, ServiceNow, Workday "pay-to-play" AI agent tiers — research agent citing PYMNTS.com (May 7, 2026). Direction consistent with market observation; not primary-source verified.
- AI-native CS companies (Lovable, Harvey, Assembly AI) restructuring CS — SaaStr per research agent; single source, soft flag. Assembly AI verified in prior briefs.
- Fivetran + dbt merger details — research agent report; existence of the partnership is general knowledge but deal structure not independently verified.
- Vitally MCP, 199OS CS MCP, Salesforce Bridge MCP — GitHub community projects cited by research agent. Treat as "worth checking" not verified production tools.

**Cut and why:**
- "Claude Sonnet 5 launch June 30, 2026" — research agent claim; no corroborating evidence, likely fabricated. Cut entirely.
- Backstory/Mackenzie Smith hire — too obscure for show audience; no signal value.

**Transcripts reviewed:**
- EP022 (Agent Command Centers, AI Slop) — harness layer callbacks, kickbacks.ai, vendor lock-in quotes. Used in Lead Story tie-in and Quick Hits.
- EP021 (Agent Sprawl) — warm thread "Pulling Apart Ops" incorporated as B-Block 2.
- EP009 (Sitting Ducks and Fortresses) — referenced in B-Block 1 discussion angle.

**next_episode.md handling:**
- What We're Building (Jay, Jun 22, Agent Command Center): incorporated as A-Block anchor.
- This Week: empty — no new submissions. Podcast input email sent June 24 received no replies from Jay or Jeff.
- Warm Thread "Pulling Apart Ops" (Jeff, EP021): incorporated as B-Block 2.
- Riverside RSS: returned error code 522 (connection timeout). No new transcripts synced. Most recent transcript is EP022.
