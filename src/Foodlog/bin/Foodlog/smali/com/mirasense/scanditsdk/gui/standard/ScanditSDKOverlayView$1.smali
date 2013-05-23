.class Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$1;
.super Ljava/lang/Object;
.source "ScanditSDKOverlayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;-><init>(Landroid/content/Context;Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;J)V
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
    .line 107
    iput-object p1, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$1;->this$0:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 110
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$1;->this$0:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    #getter for: Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mBarcodePicker:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;
    invoke-static {v2}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->access$000(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;)Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->isTorchBeingSet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$1;->this$0:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    invoke-virtual {v2}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 117
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$1;->this$0:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    #getter for: Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchMode:I
    invoke-static {v2}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->access$100(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 118
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$1;->this$0:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    const/4 v3, 0x2

    #setter for: Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchMode:I
    invoke-static {v2, v3}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->access$102(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;I)I

    .line 119
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$1;->this$0:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    #getter for: Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mBarcodePicker:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;
    invoke-static {v2}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->access$000(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;)Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->setTorch(Z)V

    .line 120
    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getTorchOnImage()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 126
    .local v1, image:Landroid/graphics/Bitmap;
    :goto_1
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$1;->this$0:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    #getter for: Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchButton:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->access$200(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 122
    .end local v1           #image:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$1;->this$0:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    #setter for: Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mTorchMode:I
    invoke-static {v2, v4}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->access$102(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;I)I

    .line 123
    iget-object v2, p0, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView$1;->this$0:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    #getter for: Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->mBarcodePicker:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;
    invoke-static {v2}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->access$000(Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;)Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->setTorch(Z)V

    .line 124
    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getTorchOffImage()Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1       #image:Landroid/graphics/Bitmap;
    goto :goto_1
.end method
