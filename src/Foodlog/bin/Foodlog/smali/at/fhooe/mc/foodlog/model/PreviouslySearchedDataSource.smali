.class public Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;
.super Ljava/lang/Object;
.source "PreviouslySearchedDataSource.java"


# instance fields
.field private allColumns:[Ljava/lang/String;

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lat/fhooe/mc/foodlog/model/PreviouslySearchedHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 18
    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 19
    const-string v2, "searched"

    aput-object v2, v0, v1

    iput-object v0, p0, Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;->allColumns:[Ljava/lang/String;

    .line 22
    new-instance v0, Lat/fhooe/mc/foodlog/model/PreviouslySearchedHelper;

    invoke-direct {v0, p1}, Lat/fhooe/mc/foodlog/model/PreviouslySearchedHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;->dbHelper:Lat/fhooe/mc/foodlog/model/PreviouslySearchedHelper;

    .line 23
    return-void
.end method

.method private cursorToPreviouslySearched(Landroid/database/Cursor;)Lat/fhooe/mc/foodlog/model/PreviouslySearched;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 91
    new-instance v0, Lat/fhooe/mc/foodlog/model/PreviouslySearched;

    invoke-direct {v0}, Lat/fhooe/mc/foodlog/model/PreviouslySearched;-><init>()V

    .line 92
    .local v0, searched:Lat/fhooe/mc/foodlog/model/PreviouslySearched;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lat/fhooe/mc/foodlog/model/PreviouslySearched;->setId(J)V

    .line 93
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/fhooe/mc/foodlog/model/PreviouslySearched;->setName(Ljava/lang/String;)V

    .line 94
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;->dbHelper:Lat/fhooe/mc/foodlog/model/PreviouslySearchedHelper;

    invoke-virtual {v0}, Lat/fhooe/mc/foodlog/model/PreviouslySearchedHelper;->close()V

    .line 31
    return-void
.end method

.method public createPreviouslySearched(Ljava/lang/String;)V
    .locals 7
    .parameter "searched"

    .prologue
    .line 37
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 38
    .local v3, values:Landroid/content/ContentValues;
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 39
    const-string v4, "yyyy-MM-dd HH:mm:ss"

    .line 38
    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 40
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 41
    .local v0, date:Ljava/util/Date;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 42
    .local v2, initialValues:Landroid/content/ContentValues;
    const-string v4, "date_created"

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v4, "date"

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v4, "searched"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v4, p0, Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "INSERT OR REPLACE INTO searched(searched,date) values(\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\',DATETIME(\'now\'));"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public deleteAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "searched"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public deleteComment(Lat/fhooe/mc/foodlog/model/PreviouslySearched;)V
    .locals 6
    .parameter "comment"

    .prologue
    .line 64
    invoke-virtual {p1}, Lat/fhooe/mc/foodlog/model/PreviouslySearched;->getId()J

    move-result-wide v0

    .line 65
    .local v0, id:J
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Comment deleted with id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "searched"

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 66
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public getAllPreviouslySearched()Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 72
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 73
    .local v10, set:Ljava/util/HashSet;
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 74
    const-string v1, "searched"

    iget-object v2, p0, Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;->allColumns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 73
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 77
    .local v9, cursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 78
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 86
    return-object v10

    .line 79
    :cond_0
    invoke-direct {p0, v9}, Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;->cursorToPreviouslySearched(Landroid/database/Cursor;)Lat/fhooe/mc/foodlog/model/PreviouslySearched;

    move-result-object v8

    .line 81
    .local v8, comment:Lat/fhooe/mc/foodlog/model/PreviouslySearched;
    invoke-virtual {v8}, Lat/fhooe/mc/foodlog/model/PreviouslySearched;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method public getPreviouslySearched(Ljava/lang/String;)Lat/fhooe/mc/foodlog/model/PreviouslySearched;
    .locals 10
    .parameter "searched"

    .prologue
    .line 98
    const/4 v8, 0x0

    .line 99
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 101
    .local v9, psearched:Lat/fhooe/mc/foodlog/model/PreviouslySearched;
    :try_start_0
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 102
    const-string v1, "searched"

    iget-object v2, p0, Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;->allColumns:[Ljava/lang/String;

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "searched like "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 104
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 101
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 105
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 106
    invoke-direct {p0, v8}, Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;->cursorToPreviouslySearched(Landroid/database/Cursor;)Lat/fhooe/mc/foodlog/model/PreviouslySearched;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 112
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 118
    :goto_0
    return-object v9

    .line 107
    :catch_0
    move-exception v0

    .line 112
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 114
    :catch_1
    move-exception v0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    .line 112
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 117
    :goto_1
    throw v0

    .line 114
    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v0

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
    .line 26
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;->dbHelper:Lat/fhooe/mc/foodlog/model/PreviouslySearchedHelper;

    invoke-virtual {v0}, Lat/fhooe/mc/foodlog/model/PreviouslySearchedHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lat/fhooe/mc/foodlog/model/PreviouslySearchedDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    return-void
.end method
