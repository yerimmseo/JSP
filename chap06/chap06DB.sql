CREATE TABLE worldcup (
    wid NUMBER(4) PRIMARY KEY,
    name VARCHAR2(100),
    voted NUMBER(8)
);


ALTER TABLE worldcup RENAME COLUMN id TO wid;
ALTER TABLE worldcup MODIFY (voted NUMBER(8) DEFAULT 0);
ALTER TABLE worldcup ADD (status CHAR(1) CONSTRAINT WORLDCUP_STATUS_CHK CHECK (status IN ('R', 'M')));
ALTER TABLE worldcup MODIFY (status CONSTRAINT WORLDCUP_STATUS_NN NOT NULL);
UPDATE worldcup SET status='M';
ALTER TABLE worldcup MODIFY (status DEFAULT 'M');

COMMIT;

CREATE TABLE worldcup_item (
    id NUMBER(6) PRIMARY KEY,
    name VARCHAR2(50),
    wid NUMBER(4),
    win NUMBER(10) DEFAULT 0,
    lose NUMBER(10) DEFAULT 0,
    final_win NUMBER(8) DEFAULT 0,
    CONSTRAINT WID_FK FOREIGN KEY(wid) REFERENCES worldcup(wid) ON DELETE CASCADE
);

CREATE SEQUENCE worldcup_wid_seq NOCYCLE;
CREATE SEQUENCE worldcup_item_seq NOCYCLE;

SELECT * FROM worldcup;
SELECT * FROM worldcup_item;

INSERT INTO worldcup_item(id, name, wid) VALUES (worldcup_item_seq.nextval, '±ôºýÀÌ ¾È³Ö°í Â÷¼± º¯°æ', 1);