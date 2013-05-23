.class public Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;
.super Ljava/lang/Object;
.source "ScanditSDKUIState.java"


# instance fields
.field public basicViewfinderTransparency:F

.field public codeAlreadyRecognized:Z

.field public codeNumber:Ljava/lang/String;

.field public codeType:Ljava/lang/String;

.field public completeRoundtripTime:I

.field public flashTransparency:F

.field public infoBannerB:F

.field public infoBannerG:F

.field public infoBannerR:F

.field public infoBannerTransparency:F

.field public lastUiDrawingTime:I

.field public luckyCodeNumber:Ljava/lang/String;

.field public luckyCodeType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public rcolorB:F

.field public rcolorG:F

.field public rcolorR:F

.field public rmessage1:Ljava/lang/String;

.field public rmessage2:Ljava/lang/String;

.field public roughCodePositionGlowEffect:Z

.field public roughCodePositionInfoTransparency:F

.field public roughCodePositionTransparency:F

.field public rx0:I

.field public rx1:I

.field public rx2:I

.field public rx3:I

.field public ry0:I

.field public ry1:I

.field public ry2:I

.field public ry3:I

.field public scanningTime:I

.field public startScreenTransparancy:F

.field public stateChanged:Z

.field public viewfinderMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->resetValues()V

    .line 74
    return-void
.end method


# virtual methods
.method public monitoredRoughCodePositionGlowEffect(Z)V
    .locals 1
    .parameter "v"

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->roughCodePositionGlowEffect:Z

    if-eq v0, p1, :cond_0

    .line 230
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->roughCodePositionGlowEffect:Z

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 233
    :cond_0
    return-void
.end method

.method public monitoredSetBasicViewfinderTransparency(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 194
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->basicViewfinderTransparency:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 195
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->basicViewfinderTransparency:F

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 198
    :cond_0
    return-void
.end method

.method public monitoredSetCodeAlreadyRecognized(Z)V
    .locals 1
    .parameter "v"

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->codeAlreadyRecognized:Z

    if-eq v0, p1, :cond_0

    .line 223
    iput-boolean p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->codeAlreadyRecognized:Z

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 226
    :cond_0
    return-void
.end method

.method public monitoredSetCodeNumber(Ljava/lang/String;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->codeNumber:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iput-object p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->codeNumber:Ljava/lang/String;

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 163
    :cond_0
    return-void
.end method

.method public monitoredSetCodeType(Ljava/lang/String;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->codeType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iput-object p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->codeType:Ljava/lang/String;

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 170
    :cond_0
    return-void
.end method

.method public monitoredSetFlashTransparency(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 201
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->flashTransparency:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 202
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->flashTransparency:F

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 205
    :cond_0
    return-void
.end method

.method public monitoredSetInfoBannerColor(FFF)V
    .locals 1
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 122
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->infoBannerR:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->infoBannerG:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->infoBannerB:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->infoBannerR:F

    .line 124
    iput p2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->infoBannerG:F

    .line 125
    iput p3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->infoBannerB:F

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 128
    :cond_1
    return-void
.end method

.method public monitoredSetInfoBannerTransparency(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 131
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->infoBannerTransparency:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 132
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->infoBannerTransparency:F

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 135
    :cond_0
    return-void
.end method

.method public monitoredSetLuckyCodeNumber(Ljava/lang/String;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->luckyCodeNumber:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iput-object p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->luckyCodeNumber:Ljava/lang/String;

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 149
    :cond_0
    return-void
.end method

.method public monitoredSetLuckyCodeType(Ljava/lang/String;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->luckyCodeType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iput-object p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->luckyCodeType:Ljava/lang/String;

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 156
    :cond_0
    return-void
.end method

.method public monitoredSetRColor(FFF)V
    .locals 1
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 292
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rcolorR:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rcolorG:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rcolorB:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    .line 293
    :cond_0
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rcolorR:F

    .line 294
    iput p2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rcolorG:F

    .line 295
    iput p3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rcolorB:F

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 298
    :cond_1
    return-void
.end method

.method public monitoredSetRMessage1(Ljava/lang/String;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rmessage1:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iput-object p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rmessage1:Ljava/lang/String;

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 177
    :cond_0
    return-void
.end method

.method public monitoredSetRMessage2(Ljava/lang/String;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rmessage2:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iput-object p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rmessage2:Ljava/lang/String;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 184
    :cond_0
    return-void
.end method

.method public monitoredSetRoughCodePositionInfoTransparency(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 215
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->roughCodePositionInfoTransparency:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 216
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->roughCodePositionInfoTransparency:F

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 219
    :cond_0
    return-void
.end method

.method public monitoredSetRoughCodePositionTransparency(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 208
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->roughCodePositionTransparency:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 209
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->roughCodePositionTransparency:F

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 212
    :cond_0
    return-void
.end method

.method public monitoredSetRx0(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 236
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rx0:I

    if-eq v0, p1, :cond_0

    .line 237
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rx0:I

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 240
    :cond_0
    return-void
.end method

.method public monitoredSetRx1(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 250
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rx1:I

    if-eq v0, p1, :cond_0

    .line 251
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rx1:I

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 254
    :cond_0
    return-void
.end method

.method public monitoredSetRx2(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 264
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rx2:I

    if-eq v0, p1, :cond_0

    .line 265
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rx2:I

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 268
    :cond_0
    return-void
.end method

.method public monitoredSetRx3(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 278
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rx3:I

    if-eq v0, p1, :cond_0

    .line 279
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rx3:I

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 282
    :cond_0
    return-void
.end method

.method public monitoredSetRy0(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 243
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->ry0:I

    if-eq v0, p1, :cond_0

    .line 244
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->ry0:I

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 247
    :cond_0
    return-void
.end method

.method public monitoredSetRy1(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 257
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->ry1:I

    if-eq v0, p1, :cond_0

    .line 258
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->ry1:I

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 261
    :cond_0
    return-void
.end method

.method public monitoredSetRy2(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 271
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->ry2:I

    if-eq v0, p1, :cond_0

    .line 272
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->ry2:I

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 275
    :cond_0
    return-void
.end method

.method public monitoredSetRy3(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 285
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->ry3:I

    if-eq v0, p1, :cond_0

    .line 286
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->ry3:I

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 289
    :cond_0
    return-void
.end method

.method public monitoredSetStartScreenTransparency(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 187
    iget v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->startScreenTransparancy:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 188
    iput p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->startScreenTransparancy:F

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 191
    :cond_0
    return-void
.end method

.method public monitoredSetViewfinderMessage(Ljava/lang/String;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->viewfinderMessage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iput-object p1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->viewfinderMessage:Ljava/lang/String;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 142
    :cond_0
    return-void
.end method

.method public resetValues()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 78
    iput v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->startScreenTransparancy:F

    .line 79
    iput v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->basicViewfinderTransparency:F

    .line 80
    iput v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->flashTransparency:F

    .line 83
    iput v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->infoBannerR:F

    .line 84
    iput v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->infoBannerG:F

    .line 85
    iput v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->infoBannerB:F

    .line 86
    const/high16 v1, 0x3f00

    iput v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->infoBannerTransparency:F

    .line 88
    iget-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInstance(Landroid/content/Context;)Lcom/mirasense/scanditsdk/ScanditSDKGlobals;

    move-result-object v0

    .line 89
    .local v0, globals:Lcom/mirasense/scanditsdk/ScanditSDKGlobals;
    invoke-virtual {v0}, Lcom/mirasense/scanditsdk/ScanditSDKGlobals;->getInitialScanScreenState()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->viewfinderMessage:Ljava/lang/String;

    .line 91
    const-string v1, ""

    iput-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->luckyCodeNumber:Ljava/lang/String;

    .line 92
    const-string v1, ""

    iput-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->luckyCodeType:Ljava/lang/String;

    .line 94
    const-string v1, ""

    iput-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->codeNumber:Ljava/lang/String;

    .line 95
    const-string v1, ""

    iput-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->codeType:Ljava/lang/String;

    .line 97
    const-string v1, ""

    iput-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rmessage1:Ljava/lang/String;

    .line 98
    const-string v1, ""

    iput-object v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rmessage2:Ljava/lang/String;

    .line 101
    iput v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rx0:I

    .line 102
    iput v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->ry0:I

    .line 103
    iput v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rx1:I

    .line 104
    iput v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->ry1:I

    .line 105
    iput v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rx2:I

    .line 106
    iput v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->ry2:I

    .line 107
    iput v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rx3:I

    .line 108
    iput v2, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->ry3:I

    .line 109
    iput v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rcolorR:F

    .line 110
    iput v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rcolorG:F

    .line 111
    iput v3, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->rcolorB:F

    .line 112
    iput v4, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->roughCodePositionTransparency:F

    .line 114
    iput v5, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->scanningTime:I

    .line 115
    iput v5, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->lastUiDrawingTime:I

    .line 116
    iput v5, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->completeRoundtripTime:I

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mirasense/scanditsdk/deprecated/gui/standard/ScanditSDKUIState;->stateChanged:Z

    .line 119
    return-void
.end method
