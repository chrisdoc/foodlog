.class Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;
.super Landroid/os/Handler;
.source "ScanditSDKBarcodePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;


# direct methods
.method constructor <init>(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 182
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 183
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v11}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$000(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/app/ProgressDialog;

    move-result-object v11

    if-nez v11, :cond_0

    .line 184
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    invoke-virtual {v12}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "Waiting for Camera"

    const-string v14, "Media server died, waiting for it to restart..."

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v12 .. v16}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v12

    #setter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v11, v12}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$002(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 189
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v11}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$000(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/app/ProgressDialog;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 190
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v11}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$000(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/app/ProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->dismiss()V

    .line 191
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    const/4 v12, 0x0

    #setter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v11, v12}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$002(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0

    .line 193
    :cond_2
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3

    .line 194
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    invoke-virtual {v11}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v1, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 195
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v11, "Camera Error"

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 196
    const-string v11, "The device failed to give access to the camera."

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 197
    const-string v11, "Ok"

    new-instance v12, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1$1;-><init>(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;)V

    invoke-virtual {v1, v11, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 204
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 206
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_3
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_8

    .line 207
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mAdjustedSubviewDimensions:Z
    invoke-static {v11}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$100(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 211
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSetPreviewToFullscreen:Z
    invoke-static {v11}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$200(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 212
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    invoke-virtual {v11}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 213
    .local v10, wm:Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 214
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v7

    .line 215
    .local v7, screenWidth:I
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v6

    .line 221
    .end local v2           #display:Landroid/view/Display;
    .end local v10           #wm:Landroid/view/WindowManager;
    .local v6, screenHeight:I
    :goto_1
    if-le v6, v7, :cond_6

    .line 222
    int-to-float v11, v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageWidth:I
    invoke-static {v12}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$300(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)I

    move-result v12

    int-to-float v12, v12

    div-float v4, v11, v12

    .line 223
    .local v4, heightScale:F
    int-to-float v11, v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageHeight:I
    invoke-static {v12}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$400(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)I

    move-result v12

    int-to-float v12, v12

    div-float v9, v11, v12

    .line 224
    .local v9, widthScale:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageWidth:I
    invoke-static {v11}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$300(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)I

    move-result v3

    .line 225
    .local v3, height:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageHeight:I
    invoke-static {v11}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$400(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)I

    move-result v8

    .line 226
    .local v8, width:I
    cmpg-float v11, v9, v4

    if-gez v11, :cond_5

    .line 227
    move v8, v7

    .line 228
    int-to-float v11, v3

    mul-float/2addr v11, v9

    float-to-int v3, v11

    .line 229
    const/16 v11, 0x10

    rem-int/lit8 v12, v3, 0x8

    sub-int v12, v3, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 235
    :goto_2
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 252
    .local v5, rParams:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_3
    const/16 v11, 0xd

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 253
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v11}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$500(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Landroid/view/SurfaceView;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;
    invoke-static {v11}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$600(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    const/4 v12, 0x1

    #setter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mAdjustedSubviewDimensions:Z
    invoke-static {v11, v12}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$102(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;Z)Z

    goto/16 :goto_0

    .line 217
    .end local v3           #height:I
    .end local v4           #heightScale:F
    .end local v5           #rParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6           #screenHeight:I
    .end local v7           #screenWidth:I
    .end local v8           #width:I
    .end local v9           #widthScale:F
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    invoke-virtual {v11}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getWidth()I

    move-result v7

    .line 218
    .restart local v7       #screenWidth:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    invoke-virtual {v11}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getHeight()I

    move-result v6

    .restart local v6       #screenHeight:I
    goto :goto_1

    .line 231
    .restart local v3       #height:I
    .restart local v4       #heightScale:F
    .restart local v8       #width:I
    .restart local v9       #widthScale:F
    :cond_5
    move v3, v6

    .line 232
    int-to-float v11, v8

    mul-float/2addr v11, v4

    float-to-int v8, v11

    .line 233
    const/16 v11, 0x10

    rem-int/lit8 v12, v8, 0x8

    sub-int v12, v8, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_2

    .line 237
    .end local v3           #height:I
    .end local v4           #heightScale:F
    .end local v8           #width:I
    .end local v9           #widthScale:F
    :cond_6
    int-to-float v11, v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageHeight:I
    invoke-static {v12}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$400(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)I

    move-result v12

    int-to-float v12, v12

    div-float v4, v11, v12

    .line 238
    .restart local v4       #heightScale:F
    int-to-float v11, v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageWidth:I
    invoke-static {v12}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$300(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)I

    move-result v12

    int-to-float v12, v12

    div-float v9, v11, v12

    .line 239
    .restart local v9       #widthScale:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageHeight:I
    invoke-static {v11}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$400(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)I

    move-result v3

    .line 240
    .restart local v3       #height:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mPreviewImageWidth:I
    invoke-static {v11}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$300(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)I

    move-result v8

    .line 241
    .restart local v8       #width:I
    cmpg-float v11, v9, v4

    if-gez v11, :cond_7

    .line 242
    move v8, v7

    .line 243
    int-to-float v11, v3

    mul-float/2addr v11, v9

    float-to-int v3, v11

    .line 244
    const/16 v11, 0x10

    rem-int/lit8 v12, v3, 0x8

    sub-int v12, v3, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 250
    :goto_4
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v5       #rParams:Landroid/widget/RelativeLayout$LayoutParams;
    goto/16 :goto_3

    .line 246
    .end local v5           #rParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    move v3, v6

    .line 247
    int-to-float v11, v8

    mul-float/2addr v11, v4

    float-to-int v8, v11

    .line 248
    const/16 v11, 0x10

    rem-int/lit8 v12, v8, 0x8

    sub-int v12, v8, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_4

    .line 259
    .end local v3           #height:I
    .end local v4           #heightScale:F
    .end local v6           #screenHeight:I
    .end local v7           #screenWidth:I
    .end local v8           #width:I
    .end local v9           #widthScale:F
    :cond_8
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_9

    .line 260
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    invoke-virtual {v11}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v1, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 261
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    const-string v11, "Camera Error"

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 262
    const-string v11, "The camera failed to start the preview."

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 263
    const-string v11, "Ok"

    new-instance v12, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1$2;-><init>(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;)V

    invoke-virtual {v1, v11, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 270
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 271
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_9
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_0

    .line 272
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker$1;->this$0:Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;

    #getter for: Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->mOverlayView:Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;
    invoke-static {v11}, Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;->access$600(Lcom/mirasense/scanditsdk/ScanditSDKBarcodePicker;)Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Lcom/mirasense/scanditsdk/gui/standard/ScanditSDKOverlayView;->setTorchButtonAlpha(I)V

    goto/16 :goto_0
.end method
