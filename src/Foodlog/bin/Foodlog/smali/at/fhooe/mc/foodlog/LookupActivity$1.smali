.class Lat/fhooe/mc/foodlog/LookupActivity$1;
.super Ljava/lang/Object;
.source "LookupActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/fhooe/mc/foodlog/LookupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lat/fhooe/mc/foodlog/LookupActivity;


# direct methods
.method constructor <init>(Lat/fhooe/mc/foodlog/LookupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lat/fhooe/mc/foodlog/LookupActivity$1;->this$0:Lat/fhooe/mc/foodlog/LookupActivity;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 93
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 94
    iget-object v1, p0, Lat/fhooe/mc/foodlog/LookupActivity$1;->this$0:Lat/fhooe/mc/foodlog/LookupActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lat/fhooe/mc/foodlog/LookupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 95
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 96
    iget-object v1, p0, Lat/fhooe/mc/foodlog/LookupActivity$1;->this$0:Lat/fhooe/mc/foodlog/LookupActivity;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lat/fhooe/mc/foodlog/LookupActivity;->search(Ljava/lang/CharSequence;)V

    .line 100
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v3
.end method
