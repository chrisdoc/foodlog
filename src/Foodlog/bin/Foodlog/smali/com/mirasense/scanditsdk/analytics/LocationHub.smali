.class public Lcom/mirasense/scanditsdk/analytics/LocationHub;
.super Ljava/lang/Object;
.source "LocationHub.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static DESIRED_ACCURACY:I

.field private static sInstance:Lcom/mirasense/scanditsdk/analytics/LocationHub;


# instance fields
.field private mIsActive:Z

.field private mIsActiveForMap:Z

.field private mLastUpdate:J

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mirasense/scanditsdk/analytics/LocationHubListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/location/Location;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mUpdateStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->sInstance:Lcom/mirasense/scanditsdk/analytics/LocationHub;

    .line 24
    const/16 v0, 0x32

    sput v0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->DESIRED_ACCURACY:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide v1, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mUpdateStart:J

    .line 29
    iput-wide v1, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mLastUpdate:J

    .line 30
    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mIsActive:Z

    .line 31
    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mIsActiveForMap:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mListeners:Ljava/util/ArrayList;

    .line 38
    return-void
.end method

.method public static getInstance()Lcom/mirasense/scanditsdk/analytics/LocationHub;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->sInstance:Lcom/mirasense/scanditsdk/analytics/LocationHub;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/mirasense/scanditsdk/analytics/LocationHub;

    invoke-direct {v0}, Lcom/mirasense/scanditsdk/analytics/LocationHub;-><init>()V

    sput-object v0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->sInstance:Lcom/mirasense/scanditsdk/analytics/LocationHub;

    .line 97
    :cond_0
    sget-object v0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->sInstance:Lcom/mirasense/scanditsdk/analytics/LocationHub;

    return-object v0
.end method

.method private notifyListeners()V
    .locals 3

    .prologue
    .line 183
    iget-object v2, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mirasense/scanditsdk/analytics/LocationHubListener;

    .line 184
    .local v1, listener:Lcom/mirasense/scanditsdk/analytics/LocationHubListener;
    iget-object v2, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mLocation:Landroid/location/Location;

    invoke-interface {v1, v2}, Lcom/mirasense/scanditsdk/analytics/LocationHubListener;->onLocationUpdate(Landroid/location/Location;)V

    goto :goto_0

    .line 186
    .end local v1           #listener:Lcom/mirasense/scanditsdk/analytics/LocationHubListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 13
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    .line 113
    iget-object v9, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mLocationManager:Landroid/location/LocationManager;

    if-nez v9, :cond_0

    .line 114
    const-string v9, "location"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/LocationManager;

    iput-object v9, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mLocationManager:Landroid/location/LocationManager;

    .line 118
    :cond_0
    const/4 v4, 0x0

    .line 119
    .local v4, loc:Landroid/location/Location;
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 120
    .local v1, criteria:Landroid/location/Criteria;
    invoke-virtual {v1, v10}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 121
    iget-object v9, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v9, v10}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v6

    .line 122
    .local v6, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 123
    .local v5, provider:Ljava/lang/String;
    iget-object v9, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v9, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 125
    .local v3, last:Landroid/location/Location;
    if-nez v4, :cond_2

    .line 126
    move-object v4, v3

    goto :goto_0

    .line 127
    :cond_2
    if-eqz v3, :cond_1

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, accDiff:F
    invoke-virtual {v4}, Landroid/location/Location;->hasAccuracy()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v3}, Landroid/location/Location;->hasAccuracy()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 130
    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v9

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    sub-float v0, v9, v10

    .line 133
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sget v10, Lcom/mirasense/scanditsdk/analytics/LocationHub;->DESIRED_ACCURACY:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    .line 134
    const/4 v0, 0x0

    .line 138
    :cond_3
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v11

    sub-long v7, v9, v11

    .line 140
    .local v7, timeDiff:J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-ltz v9, :cond_1

    const/4 v9, 0x0

    cmpl-float v9, v0, v9

    if-ltz v9, :cond_1

    .line 141
    move-object v4, v3

    goto :goto_0

    .line 146
    .end local v0           #accDiff:F
    .end local v3           #last:Landroid/location/Location;
    .end local v5           #provider:Ljava/lang/String;
    .end local v7           #timeDiff:J
    :cond_4
    return-object v4
.end method

.method public hasLocation()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocationPermissionGranted(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 158
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 160
    .local v0, coarsePermission:I
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 162
    .local v1, finePermission:I
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6
    .parameter "location"

    .prologue
    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 169
    .local v0, now:J
    iget-boolean v2, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mIsActive:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mIsActiveForMap:Z

    if-eqz v2, :cond_1

    .line 170
    :cond_0
    iput-object p1, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mLocation:Landroid/location/Location;

    .line 171
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/analytics/LocationHub;->notifyListeners()V

    .line 174
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    sget v3, Lcom/mirasense/scanditsdk/analytics/LocationHub;->DESIRED_ACCURACY:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_3

    :cond_2
    iget-wide v2, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mUpdateStart:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 176
    :cond_3
    iput-wide v0, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mLastUpdate:J

    .line 177
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mUpdateStart:J

    .line 178
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/mirasense/scanditsdk/analytics/LocationHub;->stop(Z)V

    .line 180
    :cond_4
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 189
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 192
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 195
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 51
    .local v7, now:J
    iget-wide v2, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mLastUpdate:J

    const-wide/32 v4, 0x493e0

    sub-long v4, v7, v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    iget-wide v2, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mUpdateStart:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_3

    .line 53
    :cond_1
    iput-wide v7, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mUpdateStart:J

    .line 54
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mLocationManager:Landroid/location/LocationManager;

    .line 57
    new-instance v6, Landroid/location/Criteria;

    invoke-direct {v6}, Landroid/location/Criteria;-><init>()V

    .line 58
    .local v6, criteria:Landroid/location/Criteria;
    invoke-virtual {v6, v9}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 59
    iget-object v0, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v6, v9}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, provider:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 61
    iput-boolean v9, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mIsActive:Z

    .line 62
    iget-object v0, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mLocation:Landroid/location/Location;

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x5

    const/high16 v4, 0x40a0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 70
    .end local v1           #provider:Ljava/lang/String;
    .end local v6           #criteria:Landroid/location/Criteria;
    :cond_3
    :goto_0
    return-void

    .line 67
    .restart local v1       #provider:Ljava/lang/String;
    .restart local v6       #criteria:Landroid/location/Criteria;
    :cond_4
    iput-wide v7, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mLastUpdate:J

    goto :goto_0
.end method

.method public stop(Z)V
    .locals 1
    .parameter "makeLocationInvalid"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mIsActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mIsActiveForMap:Z

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mIsActive:Z

    .line 78
    iget-object v0, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 79
    if-eqz p1, :cond_0

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mLocation:Landroid/location/Location;

    .line 83
    :cond_0
    return-void
.end method

.method public stopMapTracking(Lcom/mirasense/scanditsdk/analytics/LocationHubListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mIsActiveForMap:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mIsActive:Z

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mIsActiveForMap:Z

    .line 88
    iget-object v0, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/mirasense/scanditsdk/analytics/LocationHub;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 91
    :cond_0
    return-void
.end method
