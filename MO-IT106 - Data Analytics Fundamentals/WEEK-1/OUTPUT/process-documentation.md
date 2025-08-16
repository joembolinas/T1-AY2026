Title: Case Study – Depreciation Analysis and Procurement Planning (ASUS X453M)
Author: Joem Bolinas
Course: MO-IT106 – Data Analytics Fundamentals
Date: 2025-08-16

## 1. Overview
MotorPH plans to purchase laptops for a new branch. This use-case documents how I analyzed the ASUS X453M’s depreciation and derived purchasing recommendations, capturing my assumptions, calculations, and decision-making.

## 2. Business Objectives and Success Criteria
- Establish a clear annual depreciation and rate for ASUS X453M to support asset accounting.
- Determine historical 2019 price or define a defendable assumption with citation.
- Evaluate how many units fit the “same as last purchase” budget once provided.
- Produce actionable recommendations on lifecycle, cost, and procurement.
Success criteria: transparent formulas, justified assumptions, and reproducible results.

## 3. Scope and Constraints
- In scope: straight-line depreciation, unit pricing, quantity under fixed budget, recommendations.
- Out of scope: tax treatment, financing terms, detailed TCO beyond high-level guidance.
- Constraints: Unknown prior budget and confirmed 2019 price at the time of drafting.

## 4. Stakeholders and Roles
- MotorPH IT (requester, lifecycle planning)
- MotorPH Finance (depreciation records, budget approval)
- Supplier/Procurement (pricing, warranty, delivery)
- Student analyst (me): performs analysis and documents process.

## 5. Preconditions and Triggers
- Preconditions: Selected model (ASUS X453M), current price known (₱24,999).
- Trigger: New branch opening requiring laptops; analysis requested to plan purchase.

## 6. Assumptions and Data Inputs
- Depreciation method: Straight-line
- Useful life: 4 years
- Salvage value: 10% of cost
- Current tag price: ₱24,999
- 2019 price: to be researched; placeholder used if not found
- Budget: “same as last purchase” (value pending)
- Rounding: nearest peso
Note: Replace with official values if provided; recompute results.

## 7. Main Flow (Analytical Steps)
1) Parse requirements (Items 1–4) and extract knowns.
2) Confirm method (straight-line); write formulas before numbers.
3) Calculate annual depreciation and rate.
4) Fill Item 1 table with cost, salvage, life, rate, and annual depreciation.
5) Seek 2019 price via archives; otherwise document an explicit assumption with rationale.
6) Compute purchasable quantity under last budget: floor(Budget / current price).
7) Draft recommendations considering lifecycle, warranty, TCO, and negotiation.

## 8. Alternate Paths and Exceptions
- If policy mandates a different useful life or salvage, replace inputs and recompute.
- If 2019 price cannot be evidenced, state the assumption, source rationale, and limitations.
- If the budget is insufficient for 12 units, provide staged procurement or alternative model options.

## 9. Calculations and Results (with defaults)
Inputs: C = ₱24,999; S = 10% × C = ₱2,500 (rounded); L = 4 years
- Annual depreciation D = (C − S) / L = (24,999 − 2,500) / 4 = 22,499 / 4 = ₱5,625
- Depreciation rate r = D / C = 5,625 / 24,999 ≈ 22.50%
2019 price: pending research/assumption (document once available).
Units under budget: Units = floor(Budget / 24,999) once B is provided.

## 10. Decision Log (My Reasoning)
- Picked straight-line for simplicity and alignment with fundamentals.
- Set life at 4 years to match typical laptop refresh cycles; noted 3–5 years range.
- Chose 10% salvage as a conservative placeholder; will switch to policy value if given.
- Prioritized verifiable sources for 2019 price; otherwise use a clearly stated assumption.

## 11. Risks and Sensitivities
- Results vary with life and salvage; a 5-year life lowers annual depreciation; 0–5% salvage increases it.
- Market price variability (promos, availability) affects quantity purchasable.
- Budget uncertainty is the main blocker; computations are parameterized.

## 12. Recommendations (to include in Item 4)
- Adopt a 4-year lifecycle with 3-year on-site warranty; consider extended coverage.
- Track total cost of ownership alongside tag price.
- Negotiate bulk discounts and time purchases with promos; consider equivalent models.
- Maintain an asset register with serials and a depreciation schedule.
- If budget falls short, consider phased buying (e.g., 8 now, 4 later) or minor spec changes.

## 13. Research Plan and Sources
- ASUS X453M historical pricing via archive snapshots (ASUS PH, reputable retailers).
- Depreciation references: CFI, Investopedia; accounting context: IAS 16 summary.

## 14. References
- Corporate Finance Institute – Straight-Line Depreciation: https://corporatefinanceinstitute.com/resources/accounting/straight-line-depreciation/
- Investopedia – Straight-Line Depreciation: https://www.investopedia.com/terms/s/straightlinebasis.asp
- IAS 16 summary (PPE): https://www.iasplus.com/en/standards/ias/ias16
- Internet Archive (Wayback Machine): https://web.archive.org/

## 15. Appendices
- A. Answer computations and recommendations: see `WEEK-1/OUTPUT/2-answer-sheet.md`.
- B. Original homework sheet: see `WEEK-1/OUTPUT/MO-IT106 - Homework_ Case Study Analysis on the Depreciation Rates & Values S2102 Bolinas, J,..md`.
