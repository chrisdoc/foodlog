.class public Lat/fhooe/mc/foodlog/model/DiaryDataSource;
.super Ljava/lang/Object;
.source "DiaryDataSource.java"


# instance fields
.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field dateFormat:Ljava/text/SimpleDateFormat;

.field dateTimeFormat:Ljava/text/SimpleDateFormat;

.field private dbHelper:Lat/fhooe/mc/foodlog/model/DiaryHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 25
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->dateTimeFormat:Ljava/text/SimpleDateFormat;

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 30
    new-instance v0, Lat/fhooe/mc/foodlog/model/DiaryHelper;

    invoke-direct {v0, p1}, Lat/fhooe/mc/foodlog/model/DiaryHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->dbHelper:Lat/fhooe/mc/foodlog/model/DiaryHelper;

    .line 31
    return-void
.end method

.method public static deserializeObject([B)Ljava/lang/Object;
    .locals 7
    .parameter "b"

    .prologue
    const/4 v4, 0x0

    .line 221
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    .line 222
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 221
    invoke-direct {v1, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 223
    .local v1, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 224
    .local v3, object:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    .end local v1           #in:Ljava/io/ObjectInputStream;
    .end local v3           #object:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, cnfe:Ljava/lang/ClassNotFoundException;
    const-string v5, "deserializeObject"

    const-string v6, "class not found error"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 230
    goto :goto_0

    .line 231
    .end local v0           #cnfe:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 232
    .local v2, ioe:Ljava/io/IOException;
    const-string v5, "deserializeObject"

    const-string v6, "io error"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 234
    goto :goto_0
.end method

.method public static serializeObject(Ljava/lang/Object;)[B
    .locals 6
    .parameter "o"

    .prologue
    .line 201
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 204
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 205
    .local v3, out:Ljava/io/ObjectOutput;
    invoke-interface {v3, p0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 206
    invoke-interface {v3}, Ljava/io/ObjectOutput;->close()V

    .line 209
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 215
    .end local v3           #out:Ljava/io/ObjectOutput;
    :goto_0
    return-object v1

    .line 212
    :catch_0
    move-exception v2

    .line 213
    .local v2, ioe:Ljava/io/IOException;
    const-string v4, "serializeObject"

    const-string v5, "error"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->dbHelper:Lat/fhooe/mc/foodlog/model/DiaryHelper;

    invoke-virtual {v0}, Lat/fhooe/mc/foodlog/model/DiaryHelper;->close()V

    .line 39
    return-void
.end method

.method public createDiaryEntry(Lat/fhooe/mc/foodlog/model/Item;II)V
    .locals 7
    .parameter "item"
    .parameter "mealtime"
    .parameter "amount"

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->getFoodID(Lat/fhooe/mc/foodlog/model/Item;)J

    move-result-wide v1

    .line 139
    .local v1, id:J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 140
    .local v3, initialValues:Landroid/content/ContentValues;
    const-string v4, "foodid"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    const-string v4, "meal"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    const-string v4, "amount"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 145
    .local v0, date:Ljava/util/Date;
    const-string v4, "date"

    iget-object v5, p0, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->dateTimeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v4, p0, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "diary"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 148
    const-string v4, "kieslich"

    invoke-virtual {v3}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public createFoodEntry(Lat/fhooe/mc/foodlog/model/Item;)V
    .locals 7
    .parameter "_item"

    .prologue
    .line 42
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 43
    .local v3, initialValues:Landroid/content/ContentValues;
    const-string v4, "_id"

    invoke-virtual {p1}, Lat/fhooe/mc/foodlog/model/Item;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 44
    const-string v4, "food"

    invoke-static {p1}, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 46
    :try_start_0
    iget-object v4, p0, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "food"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 49
    .local v1, id:J
    const-string v4, "kieslich"

    invoke-virtual {v3}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    .end local v1           #id:J
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Landroid/database/SQLException;
    const-string v4, "kieslich"

    const-string v5, "food has been saved previously"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    .end local v0           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v0

    .line 53
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "kieslich"

    const-string v5, "food has been saved previously"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDiaryGroup()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lat/fhooe/mc/foodlog/model/DiaryGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v14, diaryGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lat/fhooe/mc/foodlog/model/DiaryGroup;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "diary"

    .line 81
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 82
    const-string v5, "DATE(date) DateOnly"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    .line 83
    const/4 v5, 0x0

    const-string v6, "DateOnly"

    const/4 v7, 0x0

    const-string v8, "date ASC"

    .line 80
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 84
    .local v9, cursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 88
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v12, dateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Date;>;"
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 101
    const/4 v13, 0x0

    .line 102
    .local v13, diary:Lat/fhooe/mc/foodlog/model/Diary;
    const/16 v16, 0x0

    .line 103
    .local v16, group:Lat/fhooe/mc/foodlog/model/DiaryGroup;
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    return-object v14

    .line 92
    .end local v13           #diary:Lat/fhooe/mc/foodlog/model/Diary;
    .end local v16           #group:Lat/fhooe/mc/foodlog/model/DiaryGroup;
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->dateFormat:Ljava/text/SimpleDateFormat;

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 93
    .local v11, date:Ljava/util/Date;
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v11           #date:Ljava/util/Date;
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 94
    :catch_0
    move-exception v15

    .line 95
    .local v15, e:Ljava/text/ParseException;
    invoke-virtual {v15}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_2

    .line 103
    .end local v15           #e:Ljava/text/ParseException;
    .restart local v13       #diary:Lat/fhooe/mc/foodlog/model/Diary;
    .restart local v16       #group:Lat/fhooe/mc/foodlog/model/DiaryGroup;
    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Date;

    .line 104
    .local v10, d:Ljava/util/Date;
    new-instance v16, Lat/fhooe/mc/foodlog/model/DiaryGroup;

    .end local v16           #group:Lat/fhooe/mc/foodlog/model/DiaryGroup;
    invoke-direct/range {v16 .. v16}, Lat/fhooe/mc/foodlog/model/DiaryGroup;-><init>()V

    .line 105
    .restart local v16       #group:Lat/fhooe/mc/foodlog/model/DiaryGroup;
    move-object/from16 v0, p0

    iget-object v1, v0, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 106
    const-string v2, "diary"

    .line 107
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "foodid"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "meal"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "amount"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "date"

    aput-object v5, v3, v4

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DATE(date)=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v5, v0, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\';"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 108
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 109
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 110
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 105
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 111
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 112
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 132
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 113
    :cond_2
    const-string v1, "kieslich"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "food id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->getItem(I)Lat/fhooe/mc/foodlog/model/Item;

    move-result-object v17

    .line 115
    .local v17, item:Lat/fhooe/mc/foodlog/model/Item;
    new-instance v13, Lat/fhooe/mc/foodlog/model/Diary;

    .end local v13           #diary:Lat/fhooe/mc/foodlog/model/Diary;
    invoke-direct {v13}, Lat/fhooe/mc/foodlog/model/Diary;-><init>()V

    .line 116
    .restart local v13       #diary:Lat/fhooe/mc/foodlog/model/Diary;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lat/fhooe/mc/foodlog/model/Diary;->setItem(Lat/fhooe/mc/foodlog/model/Item;)V

    .line 117
    invoke-virtual/range {v17 .. v17}, Lat/fhooe/mc/foodlog/model/Item;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v13, v1, v2}, Lat/fhooe/mc/foodlog/model/Diary;->setFood_id(J)V

    .line 118
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v13, v1}, Lat/fhooe/mc/foodlog/model/Diary;->setMealtime(I)V

    .line 119
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v13, v1}, Lat/fhooe/mc/foodlog/model/Diary;->setAmount(I)V

    .line 121
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->dateFormat:Ljava/text/SimpleDateFormat;

    const/4 v2, 0x4

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v13, v1}, Lat/fhooe/mc/foodlog/model/Diary;->setDate(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lat/fhooe/mc/foodlog/model/DiaryGroup;->addDiary(Lat/fhooe/mc/foodlog/model/Diary;)V

    .line 128
    invoke-virtual {v13}, Lat/fhooe/mc/foodlog/model/Diary;->getDate()Ljava/util/Date;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lat/fhooe/mc/foodlog/model/DiaryGroup;->setDate(Ljava/util/Date;)V

    .line 129
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 122
    :catch_1
    move-exception v15

    .line 124
    .restart local v15       #e:Ljava/text/ParseException;
    invoke-virtual {v15}, Ljava/text/ParseException;->printStackTrace()V

    .line 125
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13, v1}, Lat/fhooe/mc/foodlog/model/Diary;->setDate(Ljava/util/Date;)V

    goto :goto_4
.end method

.method public getFoodID(Lat/fhooe/mc/foodlog/model/Item;)J
    .locals 12
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 59
    const-wide/16 v10, -0x1

    .line 60
    .local v10, id:J
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "food"

    .line 61
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lat/fhooe/mc/foodlog/model/Item;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 60
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 63
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 66
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v10, v0

    .line 70
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 73
    :goto_0
    return-wide v10

    .line 67
    :catch_0
    move-exception v9

    .line 68
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "kieslich"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 69
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 70
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 71
    throw v0
.end method

.method public getHistory()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lat/fhooe/mc/foodlog/model/Diary;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v3, 0x0

    .line 168
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v9, diaries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lat/fhooe/mc/foodlog/model/Diary;>;"
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "diary"

    .line 170
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const-string v4, "foodid"

    aput-object v4, v2, v12

    .line 171
    const-string v4, "meal"

    aput-object v4, v2, v14

    const-string v4, "date"

    aput-object v4, v2, v13

    const/4 v4, 0x4

    .line 172
    const-string v5, "amount"

    aput-object v5, v2, v4

    .line 173
    const-string v7, "date"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 169
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 174
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 175
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 176
    const/4 v10, 0x0

    .line 177
    .local v10, diary:Lat/fhooe/mc/foodlog/model/Diary;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 197
    return-object v9

    .line 180
    :cond_0
    new-instance v10, Lat/fhooe/mc/foodlog/model/Diary;

    .end local v10           #diary:Lat/fhooe/mc/foodlog/model/Diary;
    invoke-direct {v10}, Lat/fhooe/mc/foodlog/model/Diary;-><init>()V

    .line 181
    .restart local v10       #diary:Lat/fhooe/mc/foodlog/model/Diary;
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v10, v0, v1}, Lat/fhooe/mc/foodlog/model/Diary;->setFood_id(J)V

    .line 182
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v10, v0}, Lat/fhooe/mc/foodlog/model/Diary;->setMealtime(I)V

    .line 183
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v10, v0}, Lat/fhooe/mc/foodlog/model/Diary;->setAmount(I)V

    .line 185
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->getItem(I)Lat/fhooe/mc/foodlog/model/Item;

    move-result-object v0

    invoke-virtual {v10, v0}, Lat/fhooe/mc/foodlog/model/Diary;->setItem(Lat/fhooe/mc/foodlog/model/Item;)V

    .line 187
    :try_start_0
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->dateTimeFormat:Ljava/text/SimpleDateFormat;

    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v10, v0}, Lat/fhooe/mc/foodlog/model/Diary;->setDate(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_1
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 188
    :catch_0
    move-exception v11

    .line 190
    .local v11, e:Ljava/text/ParseException;
    invoke-virtual {v11}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method

.method public getItem(I)Lat/fhooe/mc/foodlog/model/Item;
    .locals 13
    .parameter "id"

    .prologue
    .line 153
    const/4 v12, 0x0

    .line 155
    .local v12, item:Lat/fhooe/mc/foodlog/model/Item;
    :try_start_0
    iget-object v1, p0, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "food"

    .line 156
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "food"

    aput-object v5, v3, v4

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 155
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 158
    .local v10, cursor:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 159
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 160
    .local v9, blob:[B
    invoke-static {v9}, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lat/fhooe/mc/foodlog/model/Item;

    move-object v12, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v9           #blob:[B
    .end local v10           #cursor:Landroid/database/Cursor;
    :goto_0
    return-object v12

    .line 161
    :catch_0
    move-exception v11

    .line 162
    .local v11, e:Ljava/lang/Exception;
    const-string v1, "kieslich"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->dbHelper:Lat/fhooe/mc/foodlog/model/DiaryHelper;

    invoke-virtual {v0}, Lat/fhooe/mc/foodlog/model/DiaryHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    return-void
.end method
