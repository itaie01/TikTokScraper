CREATE TABLE videos (
    id BIGINT UNSIGNED NOT NULL,
    creator VARCHAR(255) NOT NULL,
    PRIAMRY KEY (creator, id)
    tags VARCHAR(255) NOT NULL,
    watched_date TIMESTAMP NOT NULL
);

CREATE TABLE users (
    id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    tags VARCHAR(255) NOT NULL,
);

CREATE TABLE watched_videos (
    id INT UNSIGNED PRIAMRY KEY NOT NULL AUTO_INCREMENT ,
    user_id INT UNSIGNED NOT NULL,
    video_id BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (video_id) REFERENCES videos(id)
);

CREATE TABLE skipped_videos (
    id INT UNSIGNED PRIAMRY KEY NOT NULL AUTO_INCREMENT ,
    user_id INT UNSIGNED NOT NULL,
    video_id BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (video_id) REFERENCES videos(id)
);