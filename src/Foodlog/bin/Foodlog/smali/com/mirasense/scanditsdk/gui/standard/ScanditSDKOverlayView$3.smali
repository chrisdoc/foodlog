.class Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$3;
.super Ljava/lang/Object;
.source "ScanditSDKOverlayView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->showSearchBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;


# direct methods
.method constructor <init>(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$3;->this$0:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 224
    iget-object v1, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$3;->this$0:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    #getter for: Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->access$400(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 226
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$3;->this$0:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    #getter for: Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->access$500(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 228
    iget-object v1, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$3;->this$0:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    #getter for: Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->access$500(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 229
    iget-object v1, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$3;->this$0:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    #getter for: Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->access$400(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 232
    iget-object v1, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$3;->this$0:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    #getter for: Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mSearchButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->access$400(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 237
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 240
    return-void
.end method
