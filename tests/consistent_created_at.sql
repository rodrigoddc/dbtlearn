SELECT
    *
FROM
    {{ ref('dim_listings_cleansed') }} AS l
JOIN
    {{ ref('fct_reviews') }} AS r
USING
    (listing_id)
WHERE
    l.created_at >= r.review_date