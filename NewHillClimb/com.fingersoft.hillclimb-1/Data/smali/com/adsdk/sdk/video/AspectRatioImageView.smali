.class public Lcom/adsdk/sdk/video/AspectRatioImageView;
.super Landroid/widget/ImageView;
.source "AspectRatioImageView.java"


# instance fields
.field private mFill:Z

.field private mMaxH:I

.field private mMinW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mFill:Z

    .line 12
    iput v1, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    .line 13
    iput v1, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, -0x1

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mFill:Z

    .line 12
    iput v1, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    .line 13
    iput v1, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, -0x1

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mFill:Z

    .line 12
    iput v1, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    .line 13
    iput v1, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    .line 27
    return-void
.end method

.method public static dip2pixel(ILandroid/content/Context;)F
    .locals 5
    .parameter "dip"
    .parameter "context"

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 191
    .local v1, r:Landroid/content/res/Resources;
    const/4 v2, 0x1

    int-to-float v3, p0

    .line 192
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 191
    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 194
    .local v0, px:F
    return v0
.end method


# virtual methods
.method ensureConstraintMetAndSet(IIII)V
    .locals 5
    .parameter "measuredWidth"
    .parameter "measuredHeight"
    .parameter "drawableW"
    .parameter "drawableH"

    .prologue
    .line 88
    if-ge p3, p4, :cond_2

    const/4 v2, 0x1

    .line 90
    .local v2, portraitImage:Z
    :goto_0
    if-eqz v2, :cond_3

    .line 93
    iget v3, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    if-lez v3, :cond_0

    .line 94
    iget v3, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsdk/sdk/video/AspectRatioImageView;->dip2pixel(ILandroid/content/Context;)F

    move-result v1

    .line 96
    .local v1, minW:F
    int-to-float v3, p1

    cmpg-float v3, v3, v1

    if-gez v3, :cond_0

    .line 97
    float-to-int p1, v1

    .line 98
    div-int v3, p4, p3

    mul-int p2, v3, p1

    .line 103
    .end local v1           #minW:F
    :cond_0
    iget v3, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    if-lez v3, :cond_1

    .line 104
    iget v3, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsdk/sdk/video/AspectRatioImageView;->dip2pixel(ILandroid/content/Context;)F

    move-result v0

    .line 106
    .local v0, maxH:F
    int-to-float v3, p2

    cmpl-float v3, v3, v0

    if-lez v3, :cond_1

    .line 107
    float-to-int p2, v0

    .line 108
    mul-int v3, p2, p3

    div-int p1, v3, p4

    .line 134
    .end local v0           #maxH:F
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/adsdk/sdk/video/AspectRatioImageView;->setMeasuredDimension(II)V

    .line 135
    return-void

    .line 88
    .end local v2           #portraitImage:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 114
    .restart local v2       #portraitImage:Z
    :cond_3
    iget v3, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    if-lez v3, :cond_4

    .line 115
    iget v3, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsdk/sdk/video/AspectRatioImageView;->dip2pixel(ILandroid/content/Context;)F

    move-result v0

    .line 117
    .restart local v0       #maxH:F
    int-to-float v3, p2

    cmpl-float v3, v3, v0

    if-lez v3, :cond_4

    .line 118
    float-to-int p2, v0

    .line 119
    mul-int v3, p2, p3

    div-int p1, v3, p4

    .line 123
    .end local v0           #maxH:F
    :cond_4
    iget v3, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    if-lez v3, :cond_1

    .line 124
    iget v3, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsdk/sdk/video/AspectRatioImageView;->dip2pixel(ILandroid/content/Context;)F

    move-result v1

    .line 126
    .restart local v1       #minW:F
    int-to-float v3, p1

    cmpg-float v3, v3, v1

    if-gez v3, :cond_1

    .line 127
    float-to-int p1, v1

    .line 128
    div-int v3, p4, p3

    mul-int p2, v3, p1

    goto :goto_1
.end method

.method public fillParent(ZII)V
    .locals 0
    .parameter "fill"
    .parameter "minWidthDip"
    .parameter "maxHeightDip"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mFill:Z

    .line 31
    iput p3, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    .line 32
    iput p2, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    .line 35
    return-void
.end method

.method getConstrainedHeight(IIII)I
    .locals 5
    .parameter "measuredWidth"
    .parameter "measuredHeight"
    .parameter "drawableW"
    .parameter "drawableH"

    .prologue
    .line 139
    if-ge p3, p4, :cond_2

    const/4 v2, 0x1

    .line 141
    .local v2, portraitImage:Z
    :goto_0
    if-eqz v2, :cond_3

    .line 144
    iget v3, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    if-lez v3, :cond_0

    .line 145
    iget v3, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsdk/sdk/video/AspectRatioImageView;->dip2pixel(ILandroid/content/Context;)F

    move-result v1

    .line 147
    .local v1, minW:F
    int-to-float v3, p1

    cmpg-float v3, v3, v1

    if-gez v3, :cond_0

    .line 148
    float-to-int p1, v1

    .line 149
    div-int v3, p4, p3

    mul-int p2, v3, p1

    .line 154
    .end local v1           #minW:F
    :cond_0
    iget v3, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    if-lez v3, :cond_1

    .line 155
    iget v3, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsdk/sdk/video/AspectRatioImageView;->dip2pixel(ILandroid/content/Context;)F

    move-result v0

    .line 157
    .local v0, maxH:F
    int-to-float v3, p2

    cmpl-float v3, v3, v0

    if-lez v3, :cond_1

    .line 158
    float-to-int p2, v0

    .line 159
    mul-int v3, p2, p3

    div-int p1, v3, p4

    .line 185
    .end local v0           #maxH:F
    :cond_1
    :goto_1
    return p2

    .line 139
    .end local v2           #portraitImage:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 165
    .restart local v2       #portraitImage:Z
    :cond_3
    iget v3, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    if-lez v3, :cond_4

    .line 166
    iget v3, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsdk/sdk/video/AspectRatioImageView;->dip2pixel(ILandroid/content/Context;)F

    move-result v0

    .line 168
    .restart local v0       #maxH:F
    int-to-float v3, p2

    cmpl-float v3, v3, v0

    if-lez v3, :cond_4

    .line 169
    float-to-int p2, v0

    .line 170
    mul-int v3, p2, p3

    div-int p1, v3, p4

    .line 174
    .end local v0           #maxH:F
    :cond_4
    iget v3, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    if-lez v3, :cond_1

    .line 175
    iget v3, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsdk/sdk/video/AspectRatioImageView;->dip2pixel(ILandroid/content/Context;)F

    move-result v1

    .line 177
    .restart local v1       #minW:F
    int-to-float v3, p1

    cmpg-float v3, v3, v1

    if-gez v3, :cond_1

    .line 178
    float-to-int p1, v1

    .line 179
    div-int v3, p4, p3

    mul-int p2, v3, p1

    goto :goto_1
.end method

.method protected getMeasuredHeight(II)I
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 63
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 64
    .local v3, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 66
    .local v2, height:I
    iget-boolean v4, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mFill:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_1

    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 68
    const/4 v4, 0x0

    .line 81
    :goto_0
    return v4

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 71
    .local v0, drawableH:I
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 73
    .local v1, drawableW:I
    if-le v1, v0, :cond_2

    .line 74
    mul-int v4, v3, v0

    div-int v2, v4, v1

    .line 81
    :goto_1
    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getConstrainedHeight(IIII)I

    move-result v4

    goto :goto_0

    .line 76
    :cond_2
    move v2, v3

    .line 77
    mul-int v4, v2, v1

    div-int v3, v4, v0

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 40
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 41
    .local v3, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 43
    .local v2, height:I
    iget-boolean v4, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mFill:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_1

    .line 44
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 59
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 47
    .local v0, drawableH:I
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 49
    .local v1, drawableW:I
    if-le v1, v0, :cond_2

    .line 50
    mul-int v4, v3, v0

    div-int v2, v4, v1

    .line 57
    :goto_1
    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->ensureConstraintMetAndSet(IIII)V

    goto :goto_0

    .line 52
    :cond_2
    move v2, v3

    .line 53
    mul-int v4, v2, v1

    div-int v3, v4, v0

    goto :goto_1
.end method
