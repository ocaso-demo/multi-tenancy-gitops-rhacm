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