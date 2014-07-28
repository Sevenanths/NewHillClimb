.class public Lcom/adsdk/sdk/video/AutoResizeTextView;
.super Landroid/widget/TextView;
.source "AutoResizeTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/video/AutoResizeTextView$OnTextResizeListener;
    }
.end annotation


# static fields
.field public static final MIN_TEXT_SIZE:F = 20.0f

.field private static final mEllipsis:Ljava/lang/String; = "..."

.field private static final sTextResizeCanvas:Landroid/graphics/Canvas;


# instance fields
.field private mAddEllipsis:Z

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mNeedsResize:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mTextResizeListener:Lcom/adsdk/sdk/video/AutoResizeTextView$OnTextResizeListener;

.field private mTextSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/video/AutoResizeTextView;->sTextResizeCanvas:Landroid/graphics/Canvas;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adsdk/sdk/video/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/adsdk/sdk/video/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mNeedsResize:Z

    .line 46
    iput v1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMaxTextSize:F

    .line 49
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMinTextSize:F

    .line 52
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingMult:F

    .line 55
    iput v1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingAdd:F

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mAddEllipsis:Z

    .line 73
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextSize:F

    .line 74
    return-void
.end method

.method private getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I
    .locals 8
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "textSize"

    .prologue
    .line 291
    invoke-virtual {p2, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 293
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingMult:F

    iget v6, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingAdd:F

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 294
    .local v0, layout:Landroid/text/StaticLayout;
    sget-object v1, Lcom/adsdk/sdk/video/AutoResizeTextView;->sTextResizeCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 295
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    return v1
.end method


# virtual methods
.method public getAddEllipsis()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mAddEllipsis:Z

    return v0
.end method

.method public getMaxTextSize()F
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMaxTextSize:F

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMinTextSize:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 197
    if-nez p1, :cond_0

    iget-boolean v2, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mNeedsResize:Z

    if-eqz v2, :cond_1

    .line 198
    :cond_0
    sub-int v2, p4, p2

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 199
    .local v1, widthLimit:I
    sub-int v2, p5, p3

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getCompoundPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getCompoundPaddingTop()I

    move-result v3

    sub-int v0, v2, v3

    .line 200
    .local v0, heightLimit:I
    invoke-virtual {p0, v1, v0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->resizeText(II)V

    .line 202
    .end local v0           #heightLimit:I
    .end local v1           #widthLimit:I
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 203
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 91
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 92
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mNeedsResize:Z

    .line 94
    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mNeedsResize:Z

    .line 83
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->resetTextSize()V

    .line 84
    return-void
.end method

.method public resetTextSize()V
    .locals 2

    .prologue
    .line 188
    const/4 v0, 0x0

    iget v1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextSize:F

    invoke-super {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 189
    iget v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextSize:F

    iput v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMaxTextSize:F

    .line 190
    return-void
.end method

.method public resizeText()V
    .locals 4

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getPaddingTop()I

    move-result v3

    sub-int v0, v2, v3

    .line 211
    .local v0, heightLimit:I
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 212
    .local v1, widthLimit:I
    invoke-virtual {p0, v1, v0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->resizeText(II)V

    .line 213
    return-void
.end method

.method public resizeText(II)V
    .locals 19
    .parameter "width"
    .parameter "height"

    .prologue
    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 223
    .local v4, text:Ljava/lang/CharSequence;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eqz v6, :cond_0

    if-lez p2, :cond_0

    if-lez p1, :cond_0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextSize:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 231
    .local v5, textPaint:Landroid/text/TextPaint;
    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextSize()F

    move-result v15

    .line 233
    .local v15, oldTextSize:F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMaxTextSize:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextSize:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMaxTextSize:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 236
    .local v17, targetTextSize:F
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v18

    .line 239
    .local v18, textHeight:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, p2

    if-le v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMinTextSize:F

    cmpl-float v6, v17, v6

    if-gtz v6, :cond_6

    .line 245
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mAddEllipsis:Z

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMinTextSize:F

    cmpl-float v6, v17, v6

    if-nez v6, :cond_3

    move/from16 v0, v18

    move/from16 v1, p2

    if-le v0, v1, :cond_3

    .line 247
    new-instance v3, Landroid/text/StaticLayout;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingMult:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingAdd:F

    const/4 v10, 0x0

    move/from16 v6, p1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 248
    .local v3, layout:Landroid/text/StaticLayout;
    sget-object v6, Lcom/adsdk/sdk/video/AutoResizeTextView;->sTextResizeCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v6}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 250
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 253
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v6

    add-int/lit8 v13, v6, -0x1

    .line 255
    .local v13, lastLine:I
    if-gez v13, :cond_7

    .line 256
    const-string v6, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/adsdk/sdk/video/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    .end local v3           #layout:Landroid/text/StaticLayout;
    .end local v13           #lastLine:I
    :cond_3
    :goto_3
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 277
    move-object/from16 v0, p0

    iget v6, v0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingAdd:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingMult:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/adsdk/sdk/video/AutoResizeTextView;->setLineSpacing(FF)V

    .line 280
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextResizeListener:Lcom/adsdk/sdk/video/AutoResizeTextView$OnTextResizeListener;

    if-eqz v6, :cond_4

    .line 281
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextResizeListener:Lcom/adsdk/sdk/video/AutoResizeTextView$OnTextResizeListener;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v6, v0, v15, v1}, Lcom/adsdk/sdk/video/AutoResizeTextView$OnTextResizeListener;->onTextResize(Landroid/widget/TextView;FF)V

    .line 285
    :cond_4
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mNeedsResize:Z

    goto/16 :goto_0

    .line 233
    .end local v17           #targetTextSize:F
    .end local v18           #textHeight:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextSize:F

    move/from16 v17, v0

    goto/16 :goto_1

    .line 240
    .restart local v17       #targetTextSize:F
    .restart local v18       #textHeight:I
    :cond_6
    const/high16 v6, 0x4000

    sub-float v6, v17, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMinTextSize:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 241
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v18

    goto/16 :goto_2

    .line 260
    .restart local v3       #layout:Landroid/text/StaticLayout;
    .restart local v13       #lastLine:I
    :cond_7
    invoke-virtual {v3, v13}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v16

    .line 261
    .local v16, start:I
    invoke-virtual {v3, v13}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v12

    .line 262
    .local v12, end:I
    invoke-virtual {v3, v13}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v14

    .line 263
    .local v14, lineWidth:F
    const-string v6, "..."

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    .line 266
    .local v11, ellipseWidth:F
    :goto_4
    move/from16 v0, p1

    int-to-float v6, v0

    add-float v7, v14, v11

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_8

    .line 269
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-interface {v4, v7, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/adsdk/sdk/video/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 267
    :cond_8
    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v6, v12, 0x1

    move/from16 v0, v16

    invoke-interface {v4, v0, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v14

    goto :goto_4
.end method

.method public setAddEllipsis(Z)V
    .locals 0
    .parameter "addEllipsis"

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mAddEllipsis:Z

    .line 174
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0
    .parameter "add"
    .parameter "mult"

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 128
    iput p2, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingMult:F

    .line 129
    iput p1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingAdd:F

    .line 130
    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 0
    .parameter "maxTextSize"

    .prologue
    .line 137
    iput p1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMaxTextSize:F

    .line 138
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->requestLayout()V

    .line 139
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->invalidate()V

    .line 140
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0
    .parameter "minTextSize"

    .prologue
    .line 155
    iput p1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMinTextSize:F

    .line 156
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->requestLayout()V

    .line 157
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->invalidate()V

    .line 158
    return-void
.end method

.method public setOnResizeListener(Lcom/adsdk/sdk/video/AutoResizeTextView$OnTextResizeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextResizeListener:Lcom/adsdk/sdk/video/AutoResizeTextView$OnTextResizeListener;

    .line 102
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 110
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextSize:F

    .line 111
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1
    .parameter "unit"
    .parameter "size"

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 119
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextSize:F

    .line 120
    return-void
.end method
