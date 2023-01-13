//*****************************************************************************************
//*                                                                                       *
//* This is an auto-generated file by Microsoft ML.NET CLI (Command-Line Interface) tool. *
//*                                                                                       *
//*****************************************************************************************

using Microsoft.ML.Data;

namespace KriketLabsML.Model.DataModels
{
    public class ModelInput
    {
        [ColumnName("IDcontenido"), LoadColumn(0)]
        public float IDcontenido { get; set; }


        [ColumnName("Encargado"), LoadColumn(1)]
        public string Encargado { get; set; }


        [ColumnName("NombreCurso"), LoadColumn(2)]
        public string NombreCurso { get; set; }


        [ColumnName("Periodo"), LoadColumn(3)]
        public float Periodo { get; set; }


        [ColumnName("Titulo"), LoadColumn(4)]
        public string Titulo { get; set; }


        [ColumnName("Contenido"), LoadColumn(5)]
        public string Contenido { get; set; }


        [ColumnName("Codigo"), LoadColumn(6)]
        public string Codigo { get; set; }


        [ColumnName("Secreto"), LoadColumn(7)]
        public string Secreto { get; set; }


        [ColumnName("Clicks"), LoadColumn(8)]
        public float Clicks { get; set; }


    }
}
