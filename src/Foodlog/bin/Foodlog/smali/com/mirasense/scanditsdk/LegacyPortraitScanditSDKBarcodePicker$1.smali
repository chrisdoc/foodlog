.class Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;
.super Landroid/os/Handler;
.source "LegacyPortraitScanditSDKBarcodePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;


# direct methods
.method constructor <init>(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x1

    const/16 v8, 0x10

    .line 167
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v11, :cond_1

    .line 168
    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$000(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/app/ProgressDialog;

    move-result-object v6

    if-nez v6, :cond_0

    .line 169
    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    iget-object v7, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-virtual {v7}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "Waiting for Camera"

    const-string v9, "Media server died, waiting for it to restart..."

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v11, v10}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v7

    #setter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6, v7}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$002(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 174
    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$000(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/app/ProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 175
    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$000(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 176
    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    const/4 v7, 0x0

    #setter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6, v7}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$002(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0

    .line 178
    :cond_2
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    .line 179
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 180
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v6, "Camera Error"

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 181
    const-string v6, "The device failed to give access to the camera."

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 182
    const-string v6, "Ok"

    new-instance v7, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1$1;

    invoke-direct {v7, p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1$1;-><init>(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 189
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 191
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_3
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    .line 193
    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mAdjustedSubviewDimensions:Z
    invoke-static {v6}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$100(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 195
    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-virtual {v7}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_5

    .line 196
    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageWidth:I
    invoke-static {v7}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$200(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)I

    move-result v7

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 197
    .local v2, heightScale:F
    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageHeight:I
    invoke-static {v7}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$300(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 198
    .local v5, widthScale:F
    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageWidth:I
    invoke-static {v6}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$200(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)I

    move-result v1

    .line 199
    .local v1, height:I
    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageHeight:I
    invoke-static {v6}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$300(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)I

    move-result v4

    .line 200
    .local v4, width:I
    cmpg-float v6, v5, v2

    if-gez v6, :cond_4

    .line 201
    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getWidth()I

    move-result v4

    .line 202
    int-to-float v6, v1

    mul-float/2addr v6, v5

    float-to-int v1, v6

    .line 203
    rem-int/lit8 v6, v1, 0x8

    sub-int v6, v1, v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 209
    :goto_1
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 226
    .local v3, rParams:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_2
    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 227
    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v6}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$400(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Landroid/view/SurfaceView;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;
    invoke-static {v6}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$500(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKOverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #setter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mAdjustedSubviewDimensions:Z
    invoke-static {v6, v11}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$102(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;Z)Z

    goto/16 :goto_0

    .line 205
    .end local v3           #rParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getHeight()I

    move-result v1

    .line 206
    int-to-float v6, v4

    mul-float/2addr v6, v2

    float-to-int v4, v6

    .line 207
    rem-int/lit8 v6, v4, 0x8

    sub-int v6, v4, v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_1

    .line 211
    .end local v1           #height:I
    .end local v2           #heightScale:F
    .end local v4           #width:I
    .end local v5           #widthScale:F
    :cond_5
    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageHeight:I
    invoke-static {v7}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$300(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)I

    move-result v7

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 212
    .restart local v2       #heightScale:F
    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageWidth:I
    invoke-static {v7}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$200(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 213
    .restart local v5       #widthScale:F
    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageHeight:I
    invoke-static {v6}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$300(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)I

    move-result v1

    .line 214
    .restart local v1       #height:I
    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->mPreviewImageWidth:I
    invoke-static {v6}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->access$200(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;)I

    move-result v4

    .line 215
    .restart local v4       #width:I
    cmpg-float v6, v5, v2

    if-gez v6, :cond_6

    .line 216
    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getWidth()I

    move-result v4

    .line 217
    int-to-float v6, v1

    mul-float/2addr v6, v5

    float-to-int v1, v6

    .line 218
    rem-int/lit8 v6, v1, 0x8

    sub-int v6, v1, v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 224
    :goto_3
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v3       #rParams:Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_2

    .line 220
    .end local v3           #rParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getHeight()I

    move-result v1

    .line 221
    int-to-float v6, v4

    mul-float/2addr v6, v2

    float-to-int v4, v6

    .line 222
    rem-int/lit8 v6, v4, 0x8

    sub-int v6, v4, v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_3

    .line 232
    .end local v1           #height:I
    .end local v2           #heightScale:F
    .end local v4           #width:I
    .end local v5           #widthScale:F
    :cond_7
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    .line 233
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;

    invoke-virtual {v6}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 234
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const-string v6, "Camera Error"

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 235
    const-string v6, "The camera failed to start the preview."

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 236
    const-string v6, "Ok"

    new-instance v7, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1$2;

    invoke-direct {v7, p0}, Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1$2;-><init>(Lcom/mirasense/scanditsdk/LegacyPortraitScanditSDKBarcodePicker$1;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method
