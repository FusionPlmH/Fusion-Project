.class public Lcom/meiqia/core/bean/MQInquireForm;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_CAPTCHA:Ljava/lang/String; = "captcha"

.field public static final KEY_INPUTS:Ljava/lang/String; = "inputs"

.field public static final KEY_INPUTS_FIELDS:Ljava/lang/String; = "fields"

.field public static final KEY_INPUTS_FIELDS_CHOICES:Ljava/lang/String; = "choices"

.field public static final KEY_INPUTS_FIELDS_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final KEY_INPUTS_FIELDS_FIELD_NAME:Ljava/lang/String; = "field_name"

.field public static final KEY_INPUTS_FIELDS_IGNORE_RETURNED_CUSTOMER:Ljava/lang/String; = "ignore_returned_customer"

.field public static final KEY_INPUTS_FIELDS_OPTIONAL:Ljava/lang/String; = "optional"

.field public static final KEY_INPUTS_FIELDS_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_INPUTS_TITLE:Ljava/lang/String; = "title"

.field public static final KEY_MENUS:Ljava/lang/String; = "menus"

.field public static final KEY_MENUS_ASSIGNMENTS:Ljava/lang/String; = "assignments"

.field public static final KEY_MENUS_ASSIGNMENTS_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final KEY_MENUS_ASSIGNMENTS_TARGET:Ljava/lang/String; = "target"

.field public static final KEY_MENUS_ASSIGNMENTS_TARGET_KIND:Ljava/lang/String; = "target_kind"

.field public static final KEY_MENUS_TITLE:Ljava/lang/String; = "title"

.field public static final KEY_STATUS:Ljava/lang/String; = "status"

.field public static final KEY_VERSION:Ljava/lang/String; = "version"

.field public static final STATUS_OPEN:Ljava/lang/String; = "open"


# instance fields
.field private captcha:Z

.field private inputs:Lorg/json/JSONObject;

.field private isSubmitForm:Z

.field private menus:Lorg/json/JSONObject;

.field private version:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/meiqia/core/bean/MQInquireForm;->inputs:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/meiqia/core/bean/MQInquireForm;->menus:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getInputs()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQInquireForm;->inputs:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getMenus()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQInquireForm;->menus:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/meiqia/core/bean/MQInquireForm;->version:J

    return-wide v0
.end method

.method public isCaptcha()Z
    .locals 1

    iget-boolean v0, p0, Lcom/meiqia/core/bean/MQInquireForm;->captcha:Z

    return v0
.end method

.method public isInputsOpen()Z
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/bean/MQInquireForm;->inputs:Lorg/json/JSONObject;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "open"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMenusOpen()Z
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/bean/MQInquireForm;->menus:Lorg/json/JSONObject;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "open"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSubmitForm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/meiqia/core/bean/MQInquireForm;->isSubmitForm:Z

    return v0
.end method

.method public setCaptcha(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/meiqia/core/bean/MQInquireForm;->captcha:Z

    return-void
.end method

.method public setInputs(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQInquireForm;->inputs:Lorg/json/JSONObject;

    return-void
.end method

.method public setMenus(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQInquireForm;->menus:Lorg/json/JSONObject;

    return-void
.end method

.method public setSubmitForm(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/meiqia/core/bean/MQInquireForm;->isSubmitForm:Z

    return-void
.end method

.method public setVersion(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meiqia/core/bean/MQInquireForm;->version:J

    return-void
.end method
