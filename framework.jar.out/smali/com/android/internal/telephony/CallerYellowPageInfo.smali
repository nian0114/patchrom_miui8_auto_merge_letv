.class public Lcom/android/internal/telephony/CallerYellowPageInfo;
.super Ljava/lang/Object;
.source "CallerYellowPageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CALLER_YELLOW_PAGE_ALL_CLOSE:Ljava/lang/String; = "all_close"

.field public static final CALLER_YELLOW_PAGE_ALL_OPEN:Ljava/lang/String; = "all_open"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/CallerYellowPageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUERY_YELLOW_PAGE_BASE_URI:Ljava/lang/String; = "content://com.letv.ypContentProvider/number/"

.field private static final YELLOW_PAGE_QUERY_INWIFI:I = 0x1

.field private static final YELLOW_PAGE_RUERY_ALWAYS:I


# instance fields
.field public isYPBlackNumber:Z

.field public isYellowPageInfoExist:Z

.field public yellowPageMount:Ljava/lang/String;

.field public yellowPageName:Ljava/lang/String;

.field public yellowPagePhoto:Landroid/graphics/drawable/Drawable;

.field public yellowPageResource:Ljava/lang/String;

.field public yellowPageState:Ljava/lang/String;

.field public yellowPageTag:Ljava/lang/String;

.field public yellowPageValidPhotoUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lcom/android/internal/telephony/CallerYellowPageInfo$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerYellowPageInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CallerYellowPageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageName:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageMount:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerYellowPageInfo;->isYPBlackNumber:Z

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageResource:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageState:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageTag:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageValidPhotoUri:Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallerYellowPageInfo;->isYellowPageInfoExist:Z

    .line 247
    return-void

    :cond_0
    move v0, v2

    .line 241
    goto :goto_0

    :cond_1
    move v1, v2

    .line 246
    goto :goto_1
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerYellowPageInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 60
    new-instance v1, Lcom/android/internal/telephony/CallerYellowPageInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallerYellowPageInfo;-><init>()V

    .line 61
    .local v1, "info":Lcom/android/internal/telephony/CallerYellowPageInfo;
    iput-object v4, v1, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageName:Ljava/lang/String;

    .line 62
    iput-object v4, v1, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageMount:Ljava/lang/String;

    .line 63
    const/4 v3, 0x0

    .line 64
    .local v3, "yelPhotoUrl":Ljava/lang/String;
    const/4 v2, 0x0

    .line 65
    .local v2, "yelIconUrl":Ljava/lang/String;
    iput-object v4, v1, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageTag:Ljava/lang/String;

    .line 66
    iput-object v4, v1, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageResource:Ljava/lang/String;

    .line 67
    iput-object v4, v1, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageState:Ljava/lang/String;

    .line 68
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/internal/telephony/CallerYellowPageInfo;->isYellowPageInfoExist:Z

    .line 69
    if-eqz p2, :cond_7

    .line 70
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 73
    const-string v4, "name"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, "columnIndex":I
    if-eq v0, v5, :cond_0

    .line 75
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageName:Ljava/lang/String;

    .line 78
    :cond_0
    const-string v4, "url"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 79
    if-eq v0, v5, :cond_1

    .line 80
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 83
    :cond_1
    const-string v4, "iconurl"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 84
    if-eq v0, v5, :cond_2

    .line 85
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    :cond_2
    const-string v4, "amount"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 89
    if-eq v0, v5, :cond_3

    .line 90
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageMount:Ljava/lang/String;

    .line 93
    :cond_3
    const-string v4, "tag"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 94
    if-eq v0, v5, :cond_4

    .line 95
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageTag:Ljava/lang/String;

    .line 98
    :cond_4
    const-string v4, "resource"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 99
    if-eq v0, v5, :cond_5

    .line 100
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageResource:Ljava/lang/String;

    .line 103
    :cond_5
    const-string v4, "onweb"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 104
    if-eq v0, v5, :cond_6

    .line 105
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageState:Ljava/lang/String;

    .line 108
    .end local v0    # "columnIndex":I
    :cond_6
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/internal/telephony/CallerYellowPageInfo;->isYellowPageInfoExist:Z

    .line 109
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 112
    :cond_7
    iget-object v4, v1, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageTag:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/android/internal/telephony/CallerYellowPageInfo;->isYPBlcakNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/internal/telephony/CallerYellowPageInfo;->isYPBlackNumber:Z

    .line 113
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, v2

    :goto_0
    iput-object v4, v1, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageValidPhotoUri:Ljava/lang/String;

    .line 114
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .end local v2    # "yelIconUrl":Ljava/lang/String;
    :goto_1
    invoke-static {p0, v2}, Lcom/android/internal/telephony/CallerYellowPageInfo;->getYellowPagePhoto(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPagePhoto:Landroid/graphics/drawable/Drawable;

    .line 116
    return-object v1

    .restart local v2    # "yelIconUrl":Ljava/lang/String;
    :cond_8
    move-object v4, v3

    .line 113
    goto :goto_0

    :cond_9
    move-object v2, v3

    .line 114
    goto :goto_1
.end method

.method private static getSavedYellowPageRejectState(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "yellow_page_reject_state"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "rejectSettingCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    .end local v0    # "rejectSettingCode":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "rejectSettingCode":Ljava/lang/String;
    :cond_0
    const-string v0, "all_close"

    goto :goto_0
.end method

.method public static getYellowPagePhoto(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const v4, 0x1080678

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    invoke-virtual {p0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    .line 123
    :cond_0
    const/4 v0, 0x0

    .line 125
    .local v0, "bd":Landroid/graphics/drawable/Drawable;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    :try_start_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "bd":Landroid/graphics/drawable/Drawable;
    .local v1, "bd":Landroid/graphics/drawable/Drawable;
    move-object v0, v1

    .line 130
    .end local v1    # "bd":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "bd":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static isYPBlcakNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "yelTag"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-static {p0}, Lcom/android/internal/telephony/CallerYellowPageInfo;->getSavedYellowPageRejectState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "rejectSettingCode":Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/CallerYellowPageInfo;->needReject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isYellPageSettingOn(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "allowYellQuery":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "leui_yellow_page_setting"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 192
    .local v3, "yellSettingCode":I
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 194
    .local v1, "manager":Landroid/net/ConnectivityManager;
    packed-switch v3, :pswitch_data_0

    .line 207
    :cond_0
    :goto_0
    return v0

    .line 196
    :pswitch_0
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 198
    .local v2, "wifiState":Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v4, :cond_0

    .line 199
    const/4 v0, 0x1

    goto :goto_0

    .line 202
    .end local v2    # "wifiState":Landroid/net/NetworkInfo$State;
    :pswitch_1
    const/4 v0, 0x1

    .line 203
    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static needReject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "yelTag"    # Ljava/lang/String;
    .param p2, "rejectSettingCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    const-string v4, "judgeIfNeedReject: "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rejectSettingCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v4, "all_close"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v2

    .line 170
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107007c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "yellowPageBlacks":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 173
    aget-object v4, v1, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 174
    const-string v4, "all_open"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 175
    goto :goto_0

    .line 177
    :cond_2
    const-string v4, "Y"

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 178
    goto :goto_0

    .line 172
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallerYellowPageInfo [yellowPageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yellowPageMount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageMount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isYPBlackNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallerYellowPageInfo;->isYPBlackNumber:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yellowPageResource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageResource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yellowPageState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yellowPageTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yellowPagePhoto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPagePhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yellowPageValidPhotoUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageValidPhotoUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageMount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerYellowPageInfo;->isYPBlackNumber:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageResource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageValidPhotoUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerYellowPageInfo;->isYellowPageInfoExist:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    return-void

    :cond_0
    move v0, v2

    .line 230
    goto :goto_0

    :cond_1
    move v1, v2

    .line 235
    goto :goto_1
.end method
