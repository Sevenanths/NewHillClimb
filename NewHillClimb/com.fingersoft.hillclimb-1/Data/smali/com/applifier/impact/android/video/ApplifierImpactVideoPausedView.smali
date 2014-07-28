.class public Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;
.super Landroid/widget/RelativeLayout;
.source "ApplifierImpactVideoPausedView.java"


# instance fields
.field private _outerStroke:Landroid/widget/ImageView;

.field private _playButtonBase:Landroid/widget/ImageView;

.field private _textView:Landroid/widget/TextView;

.field private _triangle:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_playButtonBase:Landroid/widget/ImageView;

    .line 24
    iput-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_outerStroke:Landroid/widget/ImageView;

    .line 25
    iput-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_triangle:Landroid/widget/ImageView;

    .line 26
    iput-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_textView:Landroid/widget/TextView;

    .line 30
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->createView()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_playButtonBase:Landroid/widget/ImageView;

    .line 24
    iput-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_outerStroke:Landroid/widget/ImageView;

    .line 25
    iput-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_triangle:Landroid/widget/ImageView;

    .line 26
    iput-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_textView:Landroid/widget/TextView;

    .line 35
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->createView()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_playButtonBase:Landroid/widget/ImageView;

    .line 24
    iput-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_outerStroke:Landroid/widget/ImageView;

    .line 25
    iput-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_triangle:Landroid/widget/ImageView;

    .line 26
    iput-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_textView:Landroid/widget/TextView;

    .line 41
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->createView()V

    .line 42
    return-void
.end method

.method private createBall(I)Landroid/widget/ImageView;
    .locals 9
    .parameter "id"

    .prologue
    const/high16 v7, 0x42ca

    const/high16 v8, 0x4248

    .line 93
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 94
    .local v3, metrics:Landroid/util/DisplayMetrics;
    iget v5, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 96
    .local v1, cnv:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 97
    .local v4, pnt:Landroid/graphics/Paint;
    const/high16 v5, -0x7000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget v5, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    iget v7, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 99
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 100
    .local v2, img:Landroid/widget/ImageView;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 101
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setId(I)V

    .line 102
    return-object v2
.end method

.method private createBlinkAnimation(J)Landroid/view/animation/AnimationSet;
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v4, 0x1

    .line 142
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 144
    .local v1, animSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 145
    .local v0, alphaAnimation:Landroid/view/animation/Animation;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 146
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 147
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 148
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 149
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 151
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 153
    return-object v1
.end method

.method private createOuterStroke(I)Landroid/widget/ImageView;
    .locals 9
    .parameter "id"

    .prologue
    const/high16 v7, 0x42e2

    const/high16 v8, 0x4260

    .line 78
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 79
    .local v3, metrics:Landroid/util/DisplayMetrics;
    iget v5, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 81
    .local v1, cnv:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 82
    .local v4, pnt:Landroid/graphics/Paint;
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    const/high16 v5, 0x40a0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    iget v5, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4254

    iget v8, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 86
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 87
    .local v2, img:Landroid/widget/ImageView;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 88
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setId(I)V

    .line 89
    return-object v2
.end method

.method private createTriangle(I)Landroid/widget/ImageView;
    .locals 18
    .parameter "id"

    .prologue
    .line 106
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    .line 107
    .local v16, metrics:Landroid/util/DisplayMetrics;
    const/high16 v2, 0x423c

    move-object/from16 v0, v16

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v3, 0x424c

    move-object/from16 v0, v16

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 108
    .local v14, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 109
    .local v1, cnv:Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v13, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 110
    .local v13, pnt:Landroid/graphics/Paint;
    const/4 v2, -0x1

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    const/16 v2, 0x8

    new-array v4, v2, [F

    .line 114
    .local v4, points:[F
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v4, v2

    .line 115
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v4, v2

    .line 117
    const/4 v2, 0x2

    const/high16 v3, 0x423c

    move-object/from16 v0, v16

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v5

    aput v3, v4, v2

    .line 118
    const/4 v2, 0x3

    const/high16 v3, 0x41c8

    move-object/from16 v0, v16

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v5

    aput v3, v4, v2

    .line 120
    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v3, v4, v2

    .line 121
    const/4 v2, 0x5

    const/high16 v3, 0x424c

    move-object/from16 v0, v16

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v5

    aput v3, v4, v2

    .line 123
    const/4 v2, 0x6

    const/4 v3, 0x0

    aput v3, v4, v2

    .line 124
    const/4 v2, 0x7

    const/4 v3, 0x0

    aput v3, v4, v2

    .line 126
    sget-object v2, Landroid/graphics/Canvas$VertexMode;->TRIANGLES:Landroid/graphics/Canvas$VertexMode;

    const/16 v3, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v1 .. v13}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    .line 128
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    .line 129
    .local v17, path:Landroid/graphics/Path;
    const/4 v2, 0x0

    aget v2, v4, v2

    const/4 v3, 0x1

    aget v3, v4, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 130
    const/4 v2, 0x2

    aget v2, v4, v2

    const/4 v3, 0x3

    aget v3, v4, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 131
    const/4 v2, 0x4

    aget v2, v4, v2

    const/4 v3, 0x5

    aget v3, v4, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 132
    move-object/from16 v0, v17

    invoke-virtual {v1, v0, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 134
    new-instance v15, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v15, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 135
    .local v15, img:Landroid/widget/ImageView;
    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    move/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 138
    return-object v15
.end method

.method private createView()V
    .locals 9

    .prologue
    const v8, 0xea61

    const/16 v6, 0xd

    const/4 v7, -0x2

    .line 45
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 46
    .local v2, metrics:Landroid/util/DisplayMetrics;
    const/high16 v5, -0x4000

    invoke-virtual {p0, v5}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->setBackgroundColor(I)V

    .line 48
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 49
    .local v3, strokeParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50
    const v5, 0xea66

    invoke-direct {p0, v5}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->createOuterStroke(I)Landroid/widget/ImageView;

    move-result-object v5

    iput-object v5, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_outerStroke:Landroid/widget/ImageView;

    .line 51
    iget-object v5, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_outerStroke:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v3}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54
    .local v1, ballParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55
    invoke-direct {p0, v8}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->createBall(I)Landroid/widget/ImageView;

    move-result-object v5

    iput-object v5, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_playButtonBase:Landroid/widget/ImageView;

    .line 56
    iget-object v5, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_playButtonBase:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v1}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v0, arrowParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 61
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 62
    const/high16 v5, 0x41f8

    iget v6, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 63
    const v5, 0xea62

    invoke-direct {p0, v5}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->createTriangle(I)Landroid/widget/ImageView;

    move-result-object v5

    iput-object v5, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_triangle:Landroid/widget/ImageView;

    .line 64
    iget-object v5, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_triangle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_textView:Landroid/widget/TextView;

    .line 67
    iget-object v5, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_textView:Landroid/widget/TextView;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    iget-object v5, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_textView:Landroid/widget/TextView;

    const-string v6, "Video paused. Tap screen to continue watching."

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v5, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_textView:Landroid/widget/TextView;

    const v6, 0xea63

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setId(I)V

    .line 70
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 71
    .local v4, textViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72
    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 73
    const/high16 v5, 0x41a0

    iget v6, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 74
    iget-object v5, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_textView:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v4}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 158
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 160
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_outerStroke:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_outerStroke:Landroid/widget/ImageView;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->createBlinkAnimation(J)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 162
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 168
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_outerStroke:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->_outerStroke:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 170
    :cond_0
    return-void
.end method
