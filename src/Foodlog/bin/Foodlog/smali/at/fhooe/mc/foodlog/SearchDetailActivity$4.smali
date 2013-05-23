.class Lat/fhooe/mc/foodlog/SearchDetailActivity$4;
.super Ljava/lang/Object;
.source "SearchDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/mc/foodlog/SearchDetailActivity;->addToDiary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/mc/foodlog/SearchDetailActivity;

.field private final synthetic val$amountView:Landroid/widget/EditText;

.field private final synthetic val$radioMealtime:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lat/fhooe/mc/foodlog/SearchDetailActivity;Landroid/widget/EditText;Landroid/widget/RadioGroup;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$4;->this$0:Lat/fhooe/mc/foodlog/SearchDetailActivity;

    iput-object p2, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$4;->val$amountView:Landroid/widget/EditText;

    iput-object p3, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$4;->val$radioMealtime:Landroid/widget/RadioGroup;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 175
    iget-object v2, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$4;->val$amountView:Landroid/widget/EditText;

    .line 176
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 177
    .local v0, amount:I
    const/4 v1, 0x0

    .line 178
    .local v1, radioID:I
    iget-object v2, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$4;->val$radioMealtime:Landroid/widget/RadioGroup;

    .line 179
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 190
    :goto_0
    iget-object v2, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$4;->this$0:Lat/fhooe/mc/foodlog/SearchDetailActivity;

    iget-object v2, v2, Lat/fhooe/mc/foodlog/SearchDetailActivity;->diarySource:Lat/fhooe/mc/foodlog/model/DiaryDataSource;

    iget-object v3, p0, Lat/fhooe/mc/foodlog/SearchDetailActivity$4;->this$0:Lat/fhooe/mc/foodlog/SearchDetailActivity;

    iget-object v3, v3, Lat/fhooe/mc/foodlog/SearchDetailActivity;->item:Lat/fhooe/mc/foodlog/model/Item;

    invoke-virtual {v2, v3, v1, v0}, Lat/fhooe/mc/foodlog/model/DiaryDataSource;->createDiaryEntry(Lat/fhooe/mc/foodlog/model/Item;II)V

    .line 191
    const-string v2, "kieslich"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "amount "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 192
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void

    .line 181
    :pswitch_0
    sget-object v2, Lat/fhooe/mc/foodlog/model/MealTime;->BREAKFAST:Lat/fhooe/mc/foodlog/model/MealTime;

    invoke-virtual {v2}, Lat/fhooe/mc/foodlog/model/MealTime;->ordinal()I

    move-result v1

    .line 182
    goto :goto_0

    .line 184
    :pswitch_1
    sget-object v2, Lat/fhooe/mc/foodlog/model/MealTime;->LUNCH:Lat/fhooe/mc/foodlog/model/MealTime;

    invoke-virtual {v2}, Lat/fhooe/mc/foodlog/model/MealTime;->ordinal()I

    move-result v1

    .line 185
    goto :goto_0

    .line 187
    :pswitch_2
    sget-object v2, Lat/fhooe/mc/foodlog/model/MealTime;->DINER:Lat/fhooe/mc/foodlog/model/MealTime;

    invoke-virtual {v2}, Lat/fhooe/mc/foodlog/model/MealTime;->ordinal()I

    move-result v1

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0012
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
