.class public Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;
.super Landroid/view/ViewGroup;
.source "DashboardLayout.java"


# static fields
.field private static final UNEVEN_GRID_PENALTY_MULTIPLIER:I = 0xa


# instance fields
.field private mMaxChildHeight:I

.field private mMaxChildWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput v1, p0, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->mMaxChildWidth:I

    .line 42
    iput v1, p0, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->mMaxChildHeight:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput v0, p0, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->mMaxChildWidth:I

    .line 42
    iput v0, p0, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->mMaxChildHeight:I

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput v0, p0, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->mMaxChildWidth:I

    .line 42
    iput v0, p0, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->mMaxChildHeight:I

    .line 54
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 21
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 86
    sub-int v18, p4, p2

    .line 87
    .local v18, width:I
    sub-int v8, p5, p3

    .line 89
    .local v8, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->getChildCount()I

    move-result v6

    .line 92
    .local v6, count:I
    const/16 v16, 0x0

    .line 93
    .local v16, visibleCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-lt v9, v6, :cond_1

    .line 101
    if-nez v16, :cond_3

    .line 179
    :cond_0
    return-void

    .line 94
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 95
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 93
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 98
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 107
    .end local v3           #child:Landroid/view/View;
    :cond_3
    const v2, 0x7fffffff

    .line 111
    .local v2, bestSpaceDifference:I
    const/4 v7, 0x0

    .line 112
    .local v7, hSpace:I
    const/4 v15, 0x0

    .line 114
    .local v15, vSpace:I
    const/4 v5, 0x1

    .line 118
    .local v5, cols:I
    :goto_2
    add-int/lit8 v19, v16, -0x1

    div-int v19, v19, v5

    add-int/lit8 v12, v19, 0x1

    .line 120
    .local v12, rows:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->mMaxChildWidth:I

    move/from16 v19, v0

    mul-int v19, v19, v5

    sub-int v19, v18, v19

    add-int/lit8 v20, v5, 0x1

    div-int v7, v19, v20

    .line 121
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->mMaxChildHeight:I

    move/from16 v19, v0

    mul-int v19, v19, v12

    sub-int v19, v8, v19

    add-int/lit8 v20, v12, 0x1

    div-int v15, v19, v20

    .line 123
    sub-int v19, v15, v7

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 124
    .local v13, spaceDifference:I
    mul-int v19, v12, v5

    move/from16 v0, v19

    move/from16 v1, v16

    if-eq v0, v1, :cond_4

    .line 125
    mul-int/lit8 v13, v13, 0xa

    .line 128
    :cond_4
    if-ge v13, v2, :cond_5

    .line 130
    move v2, v13

    .line 134
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v12, v0, :cond_6

    .line 152
    :goto_3
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 153
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 156
    add-int/lit8 v19, v5, 0x1

    mul-int v19, v19, v7

    sub-int v19, v18, v19

    div-int v18, v19, v5

    .line 157
    add-int/lit8 v19, v12, 0x1

    mul-int v19, v19, v15

    sub-int v19, v8, v19

    div-int v8, v19, v12

    .line 161
    const/16 v17, 0x0

    .line 162
    .local v17, visibleIndex:I
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v6, :cond_0

    .line 163
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 164
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 162
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 139
    .end local v3           #child:Landroid/view/View;
    .end local v17           #visibleIndex:I
    :cond_5
    add-int/lit8 v5, v5, -0x1

    .line 140
    add-int/lit8 v19, v16, -0x1

    div-int v19, v19, v5

    add-int/lit8 v12, v19, 0x1

    .line 141
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->mMaxChildWidth:I

    move/from16 v19, v0

    mul-int v19, v19, v5

    sub-int v19, v18, v19

    add-int/lit8 v20, v5, 0x1

    div-int v7, v19, v20

    .line 142
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->mMaxChildHeight:I

    move/from16 v19, v0

    mul-int v19, v19, v12

    sub-int v19, v8, v19

    add-int/lit8 v20, v12, 0x1

    div-int v15, v19, v20

    .line 143
    goto :goto_3

    .line 146
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 117
    goto/16 :goto_2

    .line 168
    .restart local v3       #child:Landroid/view/View;
    .restart local v17       #visibleIndex:I
    :cond_7
    div-int v11, v17, v5

    .line 169
    .local v11, row:I
    rem-int v4, v17, v5

    .line 171
    .local v4, col:I
    add-int/lit8 v19, v4, 0x1

    mul-int v19, v19, v7

    add-int v19, v19, p2

    mul-int v20, v18, v4

    add-int v10, v19, v20

    .line 172
    .local v10, left:I
    add-int/lit8 v19, v11, 0x1

    mul-int v19, v19, v15

    add-int v19, v19, p3

    mul-int v20, v8, v11

    add-int v14, v19, v20

    .line 175
    .local v14, top:I
    if-nez v7, :cond_8

    add-int/lit8 v19, v5, -0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_8

    move/from16 v20, p4

    .line 176
    :goto_6
    if-nez v15, :cond_9

    add-int/lit8 v19, v12, -0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_9

    move/from16 v19, p5

    .line 174
    :goto_7
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v3, v10, v14, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 177
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 175
    :cond_8
    add-int v19, v10, v18

    move/from16 v20, v19

    goto :goto_6

    .line 176
    :cond_9
    add-int v19, v14, v8

    goto :goto_7
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    const/high16 v6, -0x8000

    .line 58
    iput v5, p0, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->mMaxChildWidth:I

    .line 59
    iput v5, p0, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->mMaxChildHeight:I

    .line 62
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 61
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 64
    .local v2, childWidthMeasureSpec:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 63
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 66
    .local v1, childHeightMeasureSpec:I
    invoke-virtual {p0}, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->getChildCount()I

    move-result v3

    .line 67
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v3, :cond_0

    .line 80
    iget v5, p0, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->mMaxChildWidth:I

    invoke-static {v5, p1}, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->resolveSize(II)I

    move-result v5

    .line 81
    iget v6, p0, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->mMaxChildHeight:I

    invoke-static {v6, p2}, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->resolveSize(II)I

    move-result v6

    .line 79
    invoke-virtual {p0, v5, v6}, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->setMeasuredDimension(II)V

    .line 82
    return-void

    .line 68
    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 67
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 75
    iget v5, p0, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->mMaxChildWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->mMaxChildWidth:I

    .line 76
    iget v5, p0, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->mMaxChildHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/iosched/ui/widget/DashboardLayout;->mMaxChildHeight:I

    goto :goto_1
.end method
