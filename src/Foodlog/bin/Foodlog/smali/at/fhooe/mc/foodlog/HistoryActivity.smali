.class public Lat/fhooe/mc/foodlog/HistoryActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "HistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;,
        Lat/fhooe/mc/foodlog/HistoryActivity$HistoryAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lat/fhooe/mc/foodlog/HistoryActivity$HistoryAdapter;

.field private diaryGroupAdapter:Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;

.field private diaryGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lat/fhooe/mc/foodlog/model/DiaryGroup;",
            ">;"
        }
    .end annotation
.end field

.field private diarySource:Lat/fhooe/mc/foodlog/model/DiaryDataSource;

.field private history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lat/fhooe/mc/foodlog/model/Diary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lat/fhooe/mc/foodlog/HistoryActivity;)Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lat/fhooe/mc/foodlog/HistoryActivity;->diaryGroupAdapter:Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lat/fhooe/mc/foodlog/HistoryActivity;->setContentView(I)V

    .line 43
    new-instance v1, Lat/fhooe/mc/foodlog/model/DiaryDataSource;

    invoke-direct {v1, p0}, Lat/fhooe/mc/foodlog/model/DiaryDataSource;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lat/fhooe/mc/foodlog/HistoryActivity;->diarySource:Lat/fhooe/mc/foodlog/model/DiaryDataSource;

    .line 44
    iget-object v1, p0, Lat/fhooe/mc/foodlog/HistoryActivity;->diarySource:Lat/fhooe/mc/foodlog/model/DiaryDataSource;

    invoke-virtual {v1}, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->open()V

    .line 45
    iget-object v1, p0, Lat/fhooe/mc/foodlog/HistoryActivity;->diarySource:Lat/fhooe/mc/foodlog/model/DiaryDataSource;

    invoke-virtual {v1}, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->getHistory()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lat/fhooe/mc/foodlog/HistoryActivity;->history:Ljava/util/ArrayList;

    .line 46
    iget-object v1, p0, Lat/fhooe/mc/foodlog/HistoryActivity;->diarySource:Lat/fhooe/mc/foodlog/model/DiaryDataSource;

    invoke-virtual {v1}, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->getDiaryGroup()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lat/fhooe/mc/foodlog/HistoryActivity;->diaryGroups:Ljava/util/ArrayList;

    .line 47
    new-instance v1, Lat/fhooe/mc/foodlog/HistoryActivity$HistoryAdapter;

    const v2, 0x7f030007

    iget-object v3, p0, Lat/fhooe/mc/foodlog/HistoryActivity;->history:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2, v3}, Lat/fhooe/mc/foodlog/HistoryActivity$HistoryAdapter;-><init>(Lat/fhooe/mc/foodlog/HistoryActivity;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lat/fhooe/mc/foodlog/HistoryActivity;->adapter:Lat/fhooe/mc/foodlog/HistoryActivity$HistoryAdapter;

    .line 48
    new-instance v1, Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;

    .line 49
    const v2, 0x7f030005

    iget-object v3, p0, Lat/fhooe/mc/foodlog/HistoryActivity;->diaryGroups:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2, v3}, Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;-><init>(Lat/fhooe/mc/foodlog/HistoryActivity;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 48
    iput-object v1, p0, Lat/fhooe/mc/foodlog/HistoryActivity;->diaryGroupAdapter:Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;

    .line 50
    const v1, 0x7f0c0007

    invoke-virtual {p0, v1}, Lat/fhooe/mc/foodlog/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 51
    .local v0, historyList:Landroid/widget/ListView;
    iget-object v1, p0, Lat/fhooe/mc/foodlog/HistoryActivity;->diaryGroupAdapter:Lat/fhooe/mc/foodlog/HistoryActivity$DiaryGroupAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    new-instance v1, Lat/fhooe/mc/foodlog/HistoryActivity$1;

    invoke-direct {v1, p0}, Lat/fhooe/mc/foodlog/HistoryActivity$1;-><init>(Lat/fhooe/mc/foodlog/HistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 74
    iget-object v0, p0, Lat/fhooe/mc/foodlog/HistoryActivity;->diarySource:Lat/fhooe/mc/foodlog/model/DiaryDataSource;

    invoke-virtual {v0}, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->close()V

    .line 75
    return-void
.end method
