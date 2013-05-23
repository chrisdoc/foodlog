.class public final enum Lat/fhooe/mc/foodlog/model/MealTime;
.super Ljava/lang/Enum;
.source "MealTime.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lat/fhooe/mc/foodlog/model/MealTime;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BREAKFAST:Lat/fhooe/mc/foodlog/model/MealTime;

.field public static final enum DINER:Lat/fhooe/mc/foodlog/model/MealTime;

.field private static final synthetic ENUM$VALUES:[Lat/fhooe/mc/foodlog/model/MealTime;

.field public static final enum LUNCH:Lat/fhooe/mc/foodlog/model/MealTime;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lat/fhooe/mc/foodlog/model/MealTime;

    const-string v1, "BREAKFAST"

    invoke-direct {v0, v1, v2}, Lat/fhooe/mc/foodlog/model/MealTime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/fhooe/mc/foodlog/model/MealTime;->BREAKFAST:Lat/fhooe/mc/foodlog/model/MealTime;

    new-instance v0, Lat/fhooe/mc/foodlog/model/MealTime;

    const-string v1, "LUNCH"

    invoke-direct {v0, v1, v3}, Lat/fhooe/mc/foodlog/model/MealTime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/fhooe/mc/foodlog/model/MealTime;->LUNCH:Lat/fhooe/mc/foodlog/model/MealTime;

    new-instance v0, Lat/fhooe/mc/foodlog/model/MealTime;

    const-string v1, "DINER"

    invoke-direct {v0, v1, v4}, Lat/fhooe/mc/foodlog/model/MealTime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/fhooe/mc/foodlog/model/MealTime;->DINER:Lat/fhooe/mc/foodlog/model/MealTime;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lat/fhooe/mc/foodlog/model/MealTime;

    sget-object v1, Lat/fhooe/mc/foodlog/model/MealTime;->BREAKFAST:Lat/fhooe/mc/foodlog/model/MealTime;

    aput-object v1, v0, v2

    sget-object v1, Lat/fhooe/mc/foodlog/model/MealTime;->LUNCH:Lat/fhooe/mc/foodlog/model/MealTime;

    aput-object v1, v0, v3

    sget-object v1, Lat/fhooe/mc/foodlog/model/MealTime;->DINER:Lat/fhooe/mc/foodlog/model/MealTime;

    aput-object v1, v0, v4

    sput-object v0, Lat/fhooe/mc/foodlog/model/MealTime;->ENUM$VALUES:[Lat/fhooe/mc/foodlog/model/MealTime;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lat/fhooe/mc/foodlog/model/MealTime;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lat/fhooe/mc/foodlog/model/MealTime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lat/fhooe/mc/foodlog/model/MealTime;

    return-object v0
.end method

.method public static values()[Lat/fhooe/mc/foodlog/model/MealTime;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lat/fhooe/mc/foodlog/model/MealTime;->ENUM$VALUES:[Lat/fhooe/mc/foodlog/model/MealTime;

    array-length v1, v0

    new-array v2, v1, [Lat/fhooe/mc/foodlog/model/MealTime;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
