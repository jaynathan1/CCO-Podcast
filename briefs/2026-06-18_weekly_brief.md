# **CCO Podcast — Weekly Research Brief**

**Recording date:** Tuesday, June 17, 2026
**Release date:** Thursday, June 18, 2026
**Research window:** June 8-15, 2026

---

## **A-Block — What We're Building**

**What they're building:**
Jay is building an agent command center for Balboa — a custom studio where you can build agents, skills, and connect tools, with the system learning from your conversations and storing memory over time. Goal: as natural to use as NanoClaw. Jeff's team shipped a V1 renewal proposal automation built as a Claude Cowork skill and plans to build on it. Jeff also wants to dig into Jay's command center and how multiplayer AI fits together. Both are building internal orchestration infrastructure, not buying off-the-shelf tooling.

**Correlated stories:**

• IBM Think 2026 (May 5): Large enterprises will average 1,600 AI agents by end of 2026; only 12% have a centralized platform to manage them. [IBM newsroom / Think 2026 keynote — primary]
• OutSystems survey (Apr 7, n=1,900): 94% of enterprises report AI sprawl is increasing complexity, technical debt, and security risk — 96% are already using agents in some capacity. [BusinessWire/OutSystems press release — primary]
• Microsoft Agent 365 + KPMG (Jun 9): KPMG deploying Agent 365 to 276,000+ staff globally to centrally govern, discover, and secure AI agents. Atos simultaneously deploying to 56,000 employees. This is the enterprise "command center" pattern going mainstream. [Microsoft Source newsroom — primary]
• Microsoft Agent 365 GA (May 1): Microsoft's agent control plane — discover, govern, and secure agents across any cloud — reached GA last month. Context mapping, policy-based controls, and runtime blocking entering Intune/Defender preview in June 2026. [Microsoft Security Blog — primary]
• Renewal automation accuracy: AI-based renewal forecasting hitting 90%+ accuracy in CS platform deployments. [ThriveStack 2026 CS Platform Research — soft, single benchmark]

**Discussion angles:**

• **What IBM's 1,600 number means for Jay's build:** If enterprises are headed for 1,600 agents with only 12% having central management, the command center is infrastructure — not a nice-to-have. Jay is building ahead of the problem. Is that the right call, or do you build the command center after the sprawl happens and you know what you actually need?
• **Jeff's renewal V1 vs. enterprise platforms:** KPMG isn't buying a point solution — they're deploying a governance layer across 276,000 people. Jeff is building a Cowork skill for a 20-person team. At what scale does build-your-own break? At what scale does the enterprise platform approach cost too much?
• **The multiplayer AI problem:** Jeff named agent sprawl live on EP021. Now IBM has the data validating it. What does "multiplayer AI" governance actually look like for a 20-person CS team vs. a 50,000-person consultancy — and does the answer differ?

**Prior episode tie-in:** EP021 "Agent Sprawl" (Jun 11, 2026) — Jeff opened with: "I've got things running in Claude Cowork, Claude Code, Planhat, and NanoClaw — I need an orchestration platform that can see everything and control it." Jay closed by saying: "It inspired me to go build something else for my company — I'm calling it an agent command center." IBM's 1,600-agent projection is the data validation of that exact conversation, two weeks later.

---

## **Quick Hits (6 items)**

• **KPMG + Atos both deploy Microsoft Agent 365 this week** (Jun 9): 276,000 and 56,000 employees respectively now governed by a centralized AI agent control plane. The corporate command center story is a deployment pattern, not a concept. [Microsoft Source newsroom — primary]
• **Tech layoffs top 142,000 in 2026; 48% explicitly attributed to AI**: PayPal cutting 20% of staff over 3 years to "fund a $1.5B AI transformation." The language is shifting from restructuring to AI investment. [TechTimes May 29, secondary; multiple corroborating sources]
• **Salesforce trims ~86 Agentforce/Mulesoft positions** while continuing AI investment — even the AI-native divisions aren't immune to cost pressure as enterprise AI consolidates. [secondary, reported by multiple outlets]
• **RevOps benchmark: AI hybrid pods ($278K pipeline/seat) outperform both AI-only ($94K) and human-only ($187K)** — the replace-vs-augment debate has a number attached to it now. [LeanData 2026 AI Realities in RevOps — soft, single benchmark; do not cite as market consensus]
• **Claude Code June 2026: nested sub-agents, smarter model and region routing** — directly relevant to anyone building agentic workflows. Jeff's Cowork skill and Jay's command center both run in this layer. [Anthropic release notes — primary]
• **OutSystems: only 18% of orgs have a complete agent inventory**, with 96% already using agents. The gap between adoption and governance is widening faster than most orgs realize. [IBM Think 2026 IBV study — primary]

---

## **Trend Watch**

**The pattern:** Centralized agent governance is becoming infrastructure — not a feature. The race is on between hyperscalers (Microsoft Agent 365, IBM watsonx Orchestrate), consultancies (PwC agent OS, KPMG as implementation partner), and internal builders (Jay's command center, Jeff's Cowork skills) to own the control plane before agent sprawl turns into a compliance and security liability.

**Evidence:**
• IBM: 70% of enterprises say current AI governance is "not fit for purpose"; only 18% maintain a complete agent inventory. (IBM Think 2026 IBV 2026 Tech Leader Study — primary)
• Microsoft Agent 365 went GA May 1; reached 276,000+ person enterprise deployment by June 9 — fastest major enterprise rollout in the AI governance category to date.
• OutSystems: 38% of orgs mixing custom-built and pre-built agents, creating stacks that are hard to standardize or secure. (soft — single benchmark)

**Why flag it now:** The gap between "we have agents running" and "we know what they're doing" is about to surface in vendor contracts, compliance reviews, and board-level risk conversations. CS leaders building their own agent infrastructure are 6-12 months ahead — or about to get caught flat-footed when their CTO asks for an agent inventory they can't produce.

---

## **Suggested Episode Arc**

1. **Open (5 min):** Jeff with the baby update — then: "Two weeks ago you named the problem live on the show. This week I built the command center; you built the renewal machine. Let's compare notes."
2. **A-Block: What we're building (15-20 min):** Jay walks through the Balboa agent command center architecture. Jeff demos the renewal proposal Cowork skill. Then hit the IBM/OutSystems/Microsoft data — they're building exactly what the market says enterprises need and don't have yet.
3. **Quick hits (10-15 min):** Lead with KPMG/Atos Agent 365 deployments (direct A-Block echo), then layoffs-as-AI-investment-language story, then the RevOps hybrid pod benchmark — quick contrarian take on the replace-vs-augment question.
4. **Tool of the Week (5-10 min):** Demo or discuss the chosen tool. Strong candidates: Claude Cowork (Jeff can show his build live), Microsoft Agent 365 (if Jay has access through Balboa's M365 tenant).
5. **Close (5 min):** Remaining quick hits. Closing thought: "If you're not building your command center now, by the time you realize you need one you'll have 1,600 agents and no inventory — and that's IBM's number, not mine."

---

## **Tool of the Week (5 Candidates)**

**Tool 1: Microsoft Agent 365**
• **Tool:** [Microsoft Agent 365](https://www.microsoft.com/en-us/security/blog/2026/05/01/microsoft-agent-365-now-generally-available-expands-capabilities-and-integrations/)
• **What it does:** Centralized control plane for discovering, governing, and securing AI agents across Microsoft 365, AWS, and Google Cloud environments
• **GTM use case:** CS Ops and IT leads use it to inventory all AI agents across their stack, flag unauthorized agents, enforce policies by team or role, and centralize billing across agent deployments
• **Why this week:** KPMG deployed to 276,000 staff and Atos to 56,000 — both Jun 9. Biggest enterprise agent governance rollout to date, directly validates the command center concept.
• **Pricing:** Included in Microsoft 365 E3/E5 licenses

**Tool 2: Claude Cowork**
• **Tool:** [Claude Cowork](https://claude.ai) (Anthropic Team/Enterprise)
• **What it does:** Team AI workspace where members build, share, and run reusable Claude "Skills" — modular automations any teammate can trigger without rebuilding the workflow
• **GTM use case:** CS teams build skills for renewal proposals (Jeff's V1), QBR decks, onboarding checklists — each skill runs the same workflow every time, with outputs accessible to the whole team
• **Why this week:** Jeff's team shipped a live renewal proposal automation on it this week; Claude Code's June update added nested sub-agents making multi-step skills significantly more powerful
• **Pricing:** Anthropic Team plan ($25/user/month); Enterprise negotiated

**Tool 3: IBM watsonx Orchestrate**
• **Tool:** [IBM watsonx Orchestrate](https://www.ibm.com/products/watsonx-orchestrate)
• **What it does:** Multi-agent orchestration layer that connects and coordinates agents from different vendors into unified, monitored workflows
• **GTM use case:** RevOps or CS Ops teams wire together their Gainsight health-score agent, CRM data agent, and renewal proposal agent into a single observable pipeline with one place to see what's running and what isn't
• **Why this week:** Centerpiece of IBM Think 2026 (May 5); directly addresses the sprawl problem Jeff named in EP021 at an enterprise scale
• **Pricing:** Enterprise — verify with IBM before quoting

**Tool 4: NanoClaw**
• **Tool:** [NanoClaw](https://nanoclaw.ai)
• **What it does:** Secure, open-source personal agent platform — build agents on your own infrastructure with credentials encrypted at rest and permissions locked by default
• **GTM use case:** CS leaders and team leads build personal agent stacks (email triage, call prep, renewal signals) without handing credentials to a SaaS vendor — Jay is building his entire Balboa command center on it
• **Why this week:** Discussed in depth on EP021 as the foundation of Jay's build; the NanoClaw vs. NemoClaw (NVIDIA) question is actively being debated in the CS/ops builder community
• **Pricing:** Open source (self-hosted); NanoCompany hosted beta in progress

**Tool 5: Beam AI**
• **Tool:** [Beam AI](https://beam.ai)
• **What it does:** Deploys autonomous AI agents for enterprise CS and ops workflows — agents run assigned tasks, report results, and escalate to humans when needed, asynchronously
• **GTM use case:** CS managers deploy Beam agents to handle first-touch renewal outreach, flag at-risk accounts from usage data, and draft expansion proposals — runs without human initiation on a schedule
• **Why this week:** Beam's IBM 1,600-agent governance analysis was widely cited in agent sprawl coverage this week; positions them at the intersection of the A-Block and the governance trend
• **Pricing:** Enterprise only — contact sales

---

## **Fact-Check Notes**

**Claims verified against primary sources:**
• IBM 1,600-agent figure and 12% governance stat: Confirmed — IBM Think 2026 newsroom (May 5, 2026) and IBV 2026 Tech Leader Study. Both figures independently present in IBM's own disclosures.
• OutSystems 94% sprawl concern, 96% agent usage, 38% mixing custom/pre-built: Confirmed — BusinessWire press release Apr 7, 2026 citing OutSystems 2026 State of AI Development (n=1,900 IT leaders globally).
• KPMG 276,000 staff + Agent 365: Confirmed — Microsoft Source newsroom Jun 9, 2026 and KPMG press release same date.
• Atos 56,000 Agent 365 deployment: Confirmed via Windows Forum coverage of Atos announcement (Jun 9, 2026) — secondary source only; Atos primary press release not independently fetched. Tagged secondary.
• Microsoft Agent 365 GA May 1, 2026: Confirmed — Microsoft Security Blog primary.
• 18% complete agent inventory: Confirmed — IBM IBV 2026 Tech Leader Study. Note: this figure also matches OutSystems reporting on the same theme.

**Soft attribution — caveat on air:**
• Renewal forecasting "90% accuracy": ThriveStack 2026 CS Platform Research — single-firm benchmark, not independently corroborated. Do not cite as industry-wide standard.
• RevOps hybrid pod $278K/$94K/$187K: LeanData 2026 AI Realities report — single benchmark, methodology not independently reviewed. Directionally credible, not market consensus.
• IBM watsonx Orchestrate pricing: No confirmed public price point from IBM. Removed from TOTW write-up with a "verify with IBM" flag.

**Items from next_episode.md:**
• **Jay's Canva/Rob Giglio story (This Week):** Covered substantively in EP021 (transcript lines 127-157 — Jay introduced the story, both discussed adoption conditions and NanoClaw hackathon structure). Cut from Quick Hits. Flagged in next_episode.md with note. Could revisit if Canva publishes follow-up data or Rob Giglio resurfaces the topic.
• **EP021 "Agent Sprawl" (pub. Jun 11):** Not yet in transcripts/ at run start. Fetched from Riverside RSS transcript URL and saved to transcripts/EP021_agent_sprawl.txt. Full transcript (52,380 chars) reviewed. Used for Prior Episode Tie-In and transcript review pass.
• **Warm Thread — "Pulling apart Ops":** Jeff raised this in EP021 closing segment as an explicit topic request for next week. Flagged in next_episode.md Warm Threads. Not included in this brief (good for next run if fresh signal emerges).

**Inbox messages processed:**
• 19eb3b5c69dc01d3 (Jay, Jun 10): Podcast input — agent command center for Balboa. Processed into next_episode.md What We're Building, replied, archived.
• 19eb3c1fa00dc685 (Jeff, Jun 10): Podcast input — renewal proposal automation on Claude Cowork. Processed into next_episode.md, replied, archived.
• 19ec112fec563a8f (Jay, Jun 13): FYI re Shelby newsletter agent naming — not podcast input. Archived without reply.
• 19ec0e5bc8a3da15 (Jay, Jun 13): Reply to newsletter ideas email, metrics content — newsletter scope, not podcast brief input. Archived without reply.

**Transcripts reviewed this run:**
• EP021_agent_sprawl.txt (fetched and saved this run)
• Filename scan of all existing transcripts for prior coverage check
