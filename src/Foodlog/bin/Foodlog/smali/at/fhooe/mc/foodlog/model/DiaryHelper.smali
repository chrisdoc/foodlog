.class public Lat/fhooe/mc/foodlog/model/DiaryHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DiaryHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "diary"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final DIARY_TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE diary (_id integer primary key autoincrement,date DATETIME, foodid INTEGER,meal Integer,amount Integer);"

.field public static final DIARY_TABLE_NAME:Ljava/lang/String; = "diary"

.field private static final FOOD_TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE food (_id integer primary key autoincrement,food BLOB);"

.field public static final FOOD_TABLE_NAME:Ljava/lang/String; = "food"

.field public static final KEY_AMOUNT:Ljava/lang/String; = "amount"

.field public static final KEY_DATE:Ljava/lang/String; = "date"

.field public static final KEY_FOOD:Ljava/lang/String; = "foodid"

.field public static final KEY_FOOD_BLOB:Ljava/lang/String; = "food"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_MEAL:Ljava/lang/String; = "meal"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 31
    const-string v0, "diary"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 37
    const-string v0, "CREATE TABLE diary (_id integer primary key autoincrement,date DATETIME, foodid INTEGER,meal Integer,amount Integer);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    const-string v0, "CREATE TABLE food (_id integer primary key autoincrement,food BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 46
    return-void
.end method
