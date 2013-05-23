.class public Lat/fhooe/mc/foodlog/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p0}, Lat/fhooe/mc/foodlog/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 16
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lat/fhooe/mc/foodlog/SettingsActivity;->addPreferencesFromResource(I)V

    .line 18
    invoke-virtual {p0}, Lat/fhooe/mc/foodlog/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 19
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 21
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 12
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const-wide/high16 v10, 0x4019

    .line 33
    const v6, 0x7f090009

    invoke-virtual {p0, v6}, Lat/fhooe/mc/foodlog/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "20"

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 34
    .local v0, age:I
    const v6, 0x7f09000c

    invoke-virtual {p0, v6}, Lat/fhooe/mc/foodlog/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "180"

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 35
    .local v3, height:I
    const v6, 0x7f09000f

    invoke-virtual {p0, v6}, Lat/fhooe/mc/foodlog/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "80"

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 36
    .local v5, weight:I
    const v6, 0x7f090005

    invoke-virtual {p0, v6}, Lat/fhooe/mc/foodlog/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "male"

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, gender:Ljava/lang/String;
    const/4 v4, 0x0

    .line 38
    .local v4, kcal:I
    const-string v6, "male"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 39
    mul-int/lit8 v6, v5, 0xa

    int-to-double v6, v6

    int-to-double v8, v3

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    mul-int/lit8 v8, v0, 0x5

    int-to-double v8, v8

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4014

    add-double/2addr v6, v8

    double-to-int v4, v6

    .line 44
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 45
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const v6, 0x7f090006

    invoke-virtual {p0, v6}, Lat/fhooe/mc/foodlog/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 46
    const-string v6, "kieslich"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "saved kcal +"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void

    .line 41
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const-string v6, "female"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 42
    mul-int/lit8 v6, v5, 0xa

    int-to-double v6, v6

    int-to-double v8, v3

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    mul-int/lit8 v8, v0, 0x5

    int-to-double v8, v8

    sub-double/2addr v6, v8

    const-wide v8, 0x4064200000000000L

    sub-double/2addr v6, v8

    double-to-int v4, v6

    goto :goto_0
.end method
