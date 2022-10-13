{{- define "cluster.name" -}}
  {{- .Values.cluster.name -}}
{{- end -}}

{{- define "gitops.instance.namespace" -}}
  {{- if .Values.gitops -}}
    {{- if .Values.gitops.instance -}}
      {{- if .Values.gitops.instance.namespace -}}
        {{ .Values.gitops.instance.namespace }}
      {{- end -}}
    {{- end -}}
  {{- end -}}
{{- end -}}

{{- define "gitops.channel.namespace" -}}
  {{- if .Values.gitops -}}
    {{- if .Values.gitops.channel -}}
      {{- if .Values.gitops.channel.namespace -}}
        {{ .Values.gitops.channel.namespace }}
      {{- end -}}
    {{- end -}}
  {{- end -}}
{{- end -}}

{{- define "gitops.channel.name" -}}
  {{- if .Values.gitops -}}
    {{- if .Values.gitops.channel -}}
      {{- if .Values.gitops.channel.name -}}
        {{ .Values.gitops.channel.name }}
      {{- end -}}
    {{- end -}}
  {{- end -}}
{{- end -}}

{{- define "cluster.vendor" -}}
  {{- .Values.cluster.vendor | default "OpenShift" -}}
{{- end -}}

{{- define "metadata.labels.cloud" -}}
  {{- if eq .Values.cloud.provider "Azure" -}}
    {{ .Values.cloud.provider }}
  {{- end -}}
  {{- if eq .Values.cloud.provider "AWS" -}}
    Amazon
  {{- end -}}
  {{- if eq .Values.cloud.provider "IBM" -}}
    {{ .Values.cloud.provider }}
  {{- end -}}
{{- end -}}