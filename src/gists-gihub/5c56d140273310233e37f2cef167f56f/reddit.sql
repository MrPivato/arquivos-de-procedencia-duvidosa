CREATE DATABASE reddit;
USE reddit;

CREATE TABLE user (
    id INT,
    username VARCHAR(40),
    senha VARCHAR(40),
    postKarma INT,
    commentKarma INT,
    cakeDay DATE,
    avatar VARCHAR(40), # diretorio/link para o arquivo
    description TEXT,
    banner VARCHAR(40),
    category VARCHAR(40),
    moderator VARCHAR(40),
    communityVisibility BOOL,
    contentVisibility BOOL,
    flags VARCHAR(40),
    numberOfPosts INT,
    numberOfComments INT,
	PRIMARY KEY (id)
);

CREATE TABLE subreddit (
    id INT,
    flags VARCHAR(40),
    moderators VARCHAR(40),
    postID INT,
    rules TEXT,
    subscribes INT,
	PRIMARY KEY (id)
);

CREATE TABLE post (
    id INT,
    image TEXT,
    video TEXT,
    texto TEXT,
    downvotes INT,
    upvotes INT,
    comments INT,
    points INT,
    links TEXT,
    saves INT,
    hide BOOL,
    reports INT,
    gold INT,
    title TEXT,
	PRIMARY KEY (id)
);

CREATE TABLE results (
    id INT,
    textO TEXT,
	PRIMARY KEY (id)
);

CREATE TABLE private (
    id INT,
    whoSent VARCHAR(40),
    whoReceive VARCHAR(40),
    message TEXT,
	PRIMARY KEY (id)
);

CREATE TABLE inbox (
    id INT,
    whoSent VARCHAR(40),
    whoReceive VARCHAR(40),
    message TEXT,
    subredditID INT,
	PRIMARY KEY (id)
);

CREATE TABLE unread (
    id INT,
    whoSent VARCHAR(40),
    whoReceive VARCHAR(40),
    message TEXT,
    subredditID INT,
	PRIMARY KEY (id)
);

CREATE TABLE direct (
    id INT,
    whoSent VARCHAR(40),
    whoReceive VARCHAR(40),
    message TEXT,
	PRIMARY KEY (id)
);

CREATE TABLE room (
    id INT,
    userID INT,
    message TEXT,
	PRIMARY KEY (id)
);

CREATE TABLE comments (
    id INT,
    textO TEXT,
    userID INT,
	PRIMARY KEY (id)
);

CREATE TABLE savedPosts (
    id INT,
    postID INT,
	PRIMARY KEY (id)
);

CREATE TABLE frontpage (
    id INT,
    postID INT,
	PRIMARY KEY (id)
);

CREATE TABLE msg1 (
	id INT, 
    whoReceive VARCHAR(40),
    files TEXT,
    message TEXT,
    whoSent VARCHAR(40),
    PRIMARY KEY (id)
);

CREATE TABLE msg2 (
    id INT,
    message TEXT,
    files TEXT,
    whoReceive VARCHAR(40),
    whoSent VARCHAR(40),
	PRIMARY KEY (id)
);

CREATE TABLE subscribe (
    FK_user_id INT,
    FK_subreddit_id INT
);

CREATE TABLE createSubReddit (
    FK_user_id INT,
    FK_subreddit_id INT
);

CREATE TABLE avaliar (
    FK_user_id INT,
    FK_post_id INT
);

CREATE TABLE ver (
    FK_user_id INT,
    FK_post_id INT
);

CREATE TABLE report (
    FK_user_id INT,
    FK_post_id INT
);

CREATE TABLE hide (
    FK_user_id INT,
    FK_post_id INT
);

CREATE TABLE createPost (
    FK_user_id INT,
    FK_post_id INT
);

CREATE TABLE save (
    FK_user_id INT,
    FK_post_id INT
);

CREATE TABLE giveGold (
    FK_user_id INT,
    FK_post_id INT
);

CREATE TABLE msg1 (
    FK_user_id INT,
    FK_private_id INT
);

CREATE TABLE msg3 (
    FK_user_id INT,
    FK_unread_id INT
);

CREATE TABLE chat2 (
    FK_user_id INT,
    FK_direct_id INT
);

CREATE TABLE msg2 (
    FK_user_id INT,
    FK_inbox_id INT
);

CREATE TABLE chat1 (
    FK_user_id INT,
    FK_room_id INT
);

CREATE TABLE comments (
    FK_user_id INT,
    FK_comments_id INT
);

CREATE TABLE search (
    FK_user_id INT,
    FK_results_id INT
);

CREATE TABLE escrever1 (
    FK_room_id INT,
    FK_msg1_id INT
);

CREATE TABLE ecrever2 (
    FK_direct_id INT,
    FK_msg2_id INT
);

CREATE TABLE postComment (
    FK_post_id INT,
    FK_comments_id INT
);

CREATE TABLE savePost (
    FK_post_id INT,
    FK_savedPosts_id INT
);

CREATE TABLE featured (
    FK_frontpage_id INT,
    FK_post_id INT
);

CREATE TABLE post (
    FK_subreddit_id INT,
    FK_post_id INT
);
 
ALTER TABLE subscribe ADD CONSTRAINT FK_subscribe_0
    FOREIGN KEY (FK_user_id)
    REFERENCES user (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE subscribe ADD CONSTRAINT FK_subscribe_1
    FOREIGN KEY (FK_subreddit_id)
    REFERENCES subreddit (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE createSubReddit ADD CONSTRAINT FK_createSubReddit_0
    FOREIGN KEY (FK_user_id)
    REFERENCES user (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE createSubReddit ADD CONSTRAINT FK_createSubReddit_1
    FOREIGN KEY (FK_subreddit_id)
    REFERENCES subreddit (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE avaliar ADD CONSTRAINT FK_avaliar_0
    FOREIGN KEY (FK_user_id)
    REFERENCES user (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE avaliar ADD CONSTRAINT FK_avaliar_1
    FOREIGN KEY (FK_post_id)
    REFERENCES post (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE view ADD CONSTRAINT FK_view_0
    FOREIGN KEY (FK_user_id)
    REFERENCES user (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE view ADD CONSTRAINT FK_view_1
    FOREIGN KEY (FK_post_id)
    REFERENCES post (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE report ADD CONSTRAINT FK_report_0
    FOREIGN KEY (FK_user_id)
    REFERENCES user (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE report ADD CONSTRAINT FK_report_1
    FOREIGN KEY (FK_post_id)
    REFERENCES post (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE hide ADD CONSTRAINT FK_hide_0
    FOREIGN KEY (FK_user_id)
    REFERENCES user (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE hide ADD CONSTRAINT FK_hide_1
    FOREIGN KEY (FK_post_id)
    REFERENCES post (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE createPost ADD CONSTRAINT FK_createPost_0
    FOREIGN KEY (FK_user_id)
    REFERENCES user (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE createPost ADD CONSTRAINT FK_createPost_1
    FOREIGN KEY (FK_post_id)
    REFERENCES post (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE save ADD CONSTRAINT FK_save_0
    FOREIGN KEY (FK_user_id)
    REFERENCES user (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE save ADD CONSTRAINT FK_save_1
    FOREIGN KEY (FK_post_id)
    REFERENCES post (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE giveGold ADD CONSTRAINT FK_giveGold_0
    FOREIGN KEY (FK_user_id)
    REFERENCES user (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE giveGold ADD CONSTRAINT FK_giveGold_1
    FOREIGN KEY (FK_post_id)
    REFERENCES post (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE msg1 ADD CONSTRAINT FK_msg1_0
    FOREIGN KEY (FK_user_id)
    REFERENCES user (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE msg1 ADD CONSTRAINT FK_msg1_1
    FOREIGN KEY (FK_private_id)
    REFERENCES private (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE msg3 ADD CONSTRAINT FK_msg3_0
    FOREIGN KEY (FK_user_id)
    REFERENCES user (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE msg3 ADD CONSTRAINT FK_msg3_1
    FOREIGN KEY (FK_unread_id)
    REFERENCES unread (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE chat2 ADD CONSTRAINT FK_chat2_0
    FOREIGN KEY (FK_user_id)
    REFERENCES user (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE chat2 ADD CONSTRAINT FK_chat2_1
    FOREIGN KEY (FK_direct_id)
    REFERENCES direct (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE msg2 ADD CONSTRAINT FK_msg2_0
    FOREIGN KEY (FK_user_id)
    REFERENCES user (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE msg2 ADD CONSTRAINT FK_msg2_1
    FOREIGN KEY (FK_inbox_id)
    REFERENCES inbox (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE chat1 ADD CONSTRAINT FK_chat1_0
    FOREIGN KEY (FK_user_id)
    REFERENCES user (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE chat1 ADD CONSTRAINT FK_chat1_1
    FOREIGN KEY (FK_room_id)
    REFERENCES room (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE comments ADD CONSTRAINT FK_comments_0
    FOREIGN KEY (FK_user_id)
    REFERENCES user (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE comments ADD CONSTRAINT FK_comments_1
    FOREIGN KEY (FK_comments_id)
    REFERENCES comments (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE search ADD CONSTRAINT FK_search_0
    FOREIGN KEY (FK_user_id)
    REFERENCES user (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE search ADD CONSTRAINT FK_search_1
    FOREIGN KEY (FK_results_id)
    REFERENCES results (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE escrever1 ADD CONSTRAINT FK_escrever1_0
    FOREIGN KEY (FK_room_id)
    REFERENCES room (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE escrever1 ADD CONSTRAINT FK_escrever1_1
    FOREIGN KEY (FK_msg1_id)
    REFERENCES msg1 (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE ecrever2 ADD CONSTRAINT FK_ecrever2_0
    FOREIGN KEY (FK_direct_id)
    REFERENCES direct (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE ecrever2 ADD CONSTRAINT FK_ecrever2_1
    FOREIGN KEY (FK_msg2_id)
    REFERENCES msg2 (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE postComment ADD CONSTRAINT FK_postComment_0
    FOREIGN KEY (FK_post_id)
    REFERENCES post (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE postComment ADD CONSTRAINT FK_postComment_1
    FOREIGN KEY (FK_comments_id)
    REFERENCES comments (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE savePost ADD CONSTRAINT FK_savePost_0
    FOREIGN KEY (FK_post_id)
    REFERENCES post (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE savePost ADD CONSTRAINT FK_savePost_1
    FOREIGN KEY (FK_savedPosts_id)
    REFERENCES savedPosts (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE featured ADD CONSTRAINT FK_featured_0
    FOREIGN KEY (FK_frontpage_id)
    REFERENCES frontpage (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE featured ADD CONSTRAINT FK_featured_1
    FOREIGN KEY (FK_post_id)
    REFERENCES post (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE post ADD CONSTRAINT FK_post_0
    FOREIGN KEY (FK_subreddit_id)
    REFERENCES subreddit (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE post ADD CONSTRAINT FK_post_1
    FOREIGN KEY (FK_post_id)
    REFERENCES post (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;