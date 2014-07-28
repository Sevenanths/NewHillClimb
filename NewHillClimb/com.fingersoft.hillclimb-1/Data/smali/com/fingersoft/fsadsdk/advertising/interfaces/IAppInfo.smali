.class public interface abstract Lcom/fingersoft/fsadsdk/advertising/interfaces/IAppInfo;
.super Ljava/lang/Object;
.source "IAppInfo.java"


# static fields
.field public static final mAppname:Ljava/lang/String;

.field public static final mDesc:Ljava/lang/String;

.field public static final mIcon:Landroid/graphics/drawable/Drawable;

.field public static final mIconURL:Ljava/lang/String;

.field public static final mPackageId:Ljava/lang/String;

.field public static final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/fingersoft/fsadsdk/advertising/interfaces/IAppInfo;->mTitle:Ljava/lang/String;

    .line 14
    sput-object v0, Lcom/fingersoft/fsadsdk/advertising/interfaces/IAppInfo;->mAppname:Ljava/lang/String;

    .line 15
    sput-object v0, Lcom/fingersoft/fsadsdk/advertising/interfaces/IAppInfo;->mDesc:Ljava/lang/String;

    .line 16
    sput-object v0, Lcom/fingersoft/fsadsdk/advertising/interfaces/IAppInfo;->mPackageId:Ljava/lang/String;

    .line 17
    sput-object v0, Lcom/fingersoft/fsadsdk/advertising/interfaces/IAppInfo;->mIconURL:Ljava/lang/String;

    .line 18
    sput-object v0, Lcom/fingersoft/fsadsdk/advertising/interfaces/IAppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public abstract getAppName()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getPackageId()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method
