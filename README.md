# Netflix Binge Watching Pattern Recommendation System
Use viewer log data (time spent, genres watched, binge frequency) to analyze binge-watching behavior and content preferences. Recommend features or content categories for user retention.

## Objectives
- Identify binge-watching trends across different user segments.
- Understand which genres are most associated with binge behavior
- Analyze session durations, time-of-day usage, and day-of-week patterns.
- Recommend personalized content categories or platform features to retain users


##  Tools & Technologies Used
**Languages:** `Python` . `SQL`

**Libraries:** `Pandas` · `Numpy` · `Matplotlib` · `Seaborn` · `Scikit-learn`· 

**Clustering to segment users:** `k-means` . `hierarchical`

**Association rules:** `Apriori for genre combinations`

**Time Series Analysis:** `Time Series Analysis (binge trends over weeks/months)`

**Dashboards:** `Power BI`


## Data Information
**Data Set Name:** Netflix Movies and TV Shows

**Data Set Source:** Kaggle

**Data Set Link:** https://www.kaggle.com/datasets/shivamb/Netflix-shows?resource=download


## About the dataset
**show_id:** -> Unique ID for each show/movie

**type:** -> Whether the entry is a Movie or TV Show

**title:** -> Name of the title

**director:** ->Name of the director (can be null)

**cast:** ->List of actors involved (can be null)

**country:** ->Country of origin (can be null)

**date_added:** ->Date the title was added to Netflix

**release_year:** ->Year the title was originally released

**rating:** ->Age rating (e.g., TV-MA, PG-13)

**duration:** ->Length of movie or number of seasons (text field)

**listed_in:** ->Genres/categories the title belongs to

**description:** ->Brief summary of the title

## Steps taken for the project 
- Data Cleaning
- EDA and Visualization for Netflix Dataset
- Feature Engineering
- Univariate Analysis
- Bivariate/Multivariate Analysis
- Outlier & Anomaly Detection
- Export Clean Dataset for Power BI

## Recommendation system 
**PHASE 1: Content-Based Filtering**
- **Step 1:** Load and Prepare Data
- **Step 2:** Feature Selection for Recommendation
- **Step 3:** Text Vectorization (TF-IDF)
- **Step 4:** Compute Similarity Scores
- **Step 5:** Build a Recommendation Function
- **Step 6:** Test with Sample Inputs

**PHASE 2: Simulate Collaborative Filtering (To build Hybrid)**
- **Step 7:** Simulate Ratings Data 
- **Step 8:** Collaborative Filtering using Surprise
- **Step 9:** Final Hybrid Recommender


## Possible Recommendations 
**1. Boost Short-Form Series Content** 
TV Shows are rising in popularity. Shorter seasons or mini-series (3–6 episodes) may increase binge-watching and 
viewer stickiness. 

**2. Expand Regional Catalogs** 
Encourage local productions in emerging markets (e.g., South Asia, Latin America) to increase global reach and 
personalization. 

**3. Invest in Teen/Young Adult Genres** 
Given the dominance of TV-14 and TV-MA, Netflix can tailor more content for Gen Z and Millennials, including 
anime, thrillers, and reality-based formats.

**4. Seasonal Releases Strategy** 
Use past content addition trends to plan releases before holidays (e.g., Q4) for maximum engagement.

**5. Clean Metadata** 
Address inconsistent or missing metadata (e.g., country, director, release date) to improve content discoverability 
and recommendation accuracy.


## Key Insights Summary 
**1. Trends Observed** 
- Content Volume Peaked Between 2018–2020: A significant increase in new content was observed during these 
years, aligning with Netflix's aggressive global expansion strategy. 
- Movies Dominate the Platform: Movies are more prevalent than TV Shows, though the latter has shown strong 
year-over-year growth. 
- Short to Mid-Length Movies Are Most Common: Majority of movies fall in the 80–120 minute range, suggesting 
viewer preference for manageable binge sessions.

**2. Patterns Identified** 
- Teen and Adult-Oriented Content is Primary: Most content is rated TV-MA and TV-14, indicating Netflix’s focus 
on teen and adult demographics. 
- US, India, and UK Are the Top Content Producers: These three countries contribute the highest number of titles, 
with the US dominating in volume. 
- TV Shows Often Have Shorter Duration Per Entry: Typically one season or limited episodes, encouraging binge 
consumption behavior.
 
**3. Correlations and Anomalies** 
- Strong Correlation Between Recent Release Years and Addition Dates: Most content is added within 1–2 years 
of its production, showing Netflix’s commitment to fresh, timely releases. 
- Outliers in Duration: A few movie titles have durations over 300 minutes, likely due to: 
    - Data entry errors 
    - Special event films or misclassified content 
- Inconsistent or Missing Metadata: Several entries are missing values for fields like director, country, and 
date_added, which may affect recommendation algorithms and user experience. 

## Business Implications 
**1. Focused Content Strategy for Target Demographics** 
- **Insight:** Majority of content is rated TV-MA and **TV-14_ 
- **Implication:** Netflix should continue investing in content geared toward young adults and mature audiences, as this segment dominates the platform. Developing region-specific titles within these rating categories may boost localized engagement and global relevance. 

**2. Leverage Movie Volume with Enhanced Categorization** 
- **Insight:** Movies are more numerous than TV shows, but some are long or misclassified 
- **Implication:** Netflix can improve content tagging and discovery by cleaning metadata and offering smarter filters (e.g., "short films", "epics", "bite-sized content") to help users find exactly what fits their binge time or mood. 

**3. Optimize Release Calendars Around Viewer Habits** 
- **Insight:** Surge in content added between 2018–2020, especially around Q4 
- **Implication:** Analyze seasonal viewer behavior and align new releases or marketing campaigns around holiday seasons and key global events to maximize launch impact and viewership

**4. Address Metadata Gaps to Improve Personalization** 
- **Insight:** Missing values in country, director, date_added 
- **Implication:** Incomplete metadata limits the effectiveness of recommendation algorithms and content categorization. Cleaning and standardizing this data can improve search, personalization, and user satisfaction.

**5. Capitalize on Regional Strengths** 
- **Insight:** Most titles originate from the US, India, and UK 
- **Implication:** While these regions are content-rich, underrepresented markets like Africa, Southeast Asia, or Latin America could be untapped opportunities. Investing in local productions there can help Netflix expand market share and subscriber base in emerging economies.

**6. TV Show Format Drives Binge-Watching** 
- **Insight:** TV shows often consist of one season or a few episodes 
- **Implication:** Continue promoting mini-series and limited-series formats as they align with binge-watching behavior. This approach also reduces production risk while maintaining high engagement levels.

## Conclusion
This project is not just about data cleaning or visualization, but about generating actionable insights to improve a streaming platform’s user engagement. It mimics how real data scientists would approach behavioral analytics in a product team.

##  Contributions
Suggestions, improvements, and issues are welcome. Feel free to fork the repo or raise a pull request!

## Contact
**Rasika Vispute**  
Email: rasikavispute32@gmail.com 
LinkedIn: https://www.linkedin.com/in/rasikavispute/
