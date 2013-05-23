.class public Lat/fhooe/mc/foodlog/model/PreviouslySearchedHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PreviouslySearchedHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "previouslysearched"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final DICTIONARY_TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE searched (_id integer primary key autoincrement,date DATETIME, searched TEXT); CREATE UNIQUE INDEX idx_something ON searched(searched);"

.field public static final KEY_DATE:Ljava/lang/String; = "date"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_SEARCHED:Ljava/lang/String; = "searched"

.field public static final SEARCHED_TABLE_NAME:Ljava/lang/String; = "searched"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 23
    const-string v0, "previouslysearched"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 28
    const-string v0, "CREATE TABLE searched (_id integer primary key autoincrement,date DATETIME, searched TEXT); CREATE UNIQUE INDEX idx_something ON searched(searched);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 34
    return-void
.end method
